package repositorio

import dominio.Carros
import org.springframework.jdbc.core.BeanPropertyRowMapper
import org.springframework.jdbc.core.JdbcTemplate

class CarrosRepositorio(val jdbcTemplate: JdbcTemplate) {

    fun inserir(carro: Carros) {
        jdbcTemplate.update("""
            insert into Carro (Modelo, Ano, Potencia) values
            ('${carro.Modelo}', ${carro.Ano}, '${carro.Potencia}')
        """)
    }
    fun idCarroValido(idCarro:Int):Boolean{
        val contagem = jdbcTemplate.queryForObject("select count(*) from Carro where idCarro = ?",
        Int::class.java,
        idCarro
        )
        return contagem == 1
    }

    fun excluirTodos() {
        jdbcTemplate.update("delete from Carro ")
    }

    fun listar():List<Carros> {
        return jdbcTemplate.query("select * from Carro",
            BeanPropertyRowMapper(Carros::class.java))
    }

    fun listarano():List<Carros>{
        return jdbcTemplate.query("select * from Carro where Ano >= 2019 order by Potencia",
            BeanPropertyRowMapper(Carros::class.java))
    }

    fun listarpot():List<Carros>{
        return jdbcTemplate.query("select * from Carro where Potencia >= 1.5 order by Ano",
            BeanPropertyRowMapper(Carros::class.java))
    }

    fun recuperar(id:Int):Carros {
        // "?" será substituido pelo "id" do 3º argumento
        // queryForObject() recupera só 1 linha do banco
        val carro = jdbcTemplate.queryForObject(
            "select * from Carro where idCarro = ?",
            BeanPropertyRowMapper(Carros::class.java),
            id
        )
        return carro
    }

    fun excluir(id:Int):Int {
        // "?" será substituido pelo "id" do 2º argumento
        val excluidos = jdbcTemplate.update("delete from Carro where idCarro = ?", id)
        //val excluidos = jdbcTemplate.update("delete from pais where id = $id")
        return excluidos
    }

}