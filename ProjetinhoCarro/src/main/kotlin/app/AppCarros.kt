package app

import configuracao.Conexao
import dominio.Carros
import repositorio.CarrosRepositorio
import javax.swing.JOptionPane

fun main() {
    val jdbcTemplate = Conexao().getJdbcTemplate()
    val CarrosRepositorio = CarrosRepositorio(jdbcTemplate)

    var pergunta = JOptionPane.showInputDialog("Quantos carros quer cadastrar").toInt()
    var contador = 0

    while(contador < pergunta) {
        val novoModelo = JOptionPane.showInputDialog("Modelo do Carro")
        val novoAno = JOptionPane.showInputDialog("Ano?").toInt()
        val novaPotencia = JOptionPane.showInputDialog("Potência:").toDouble()
        val novoCarro = Carros(0, novoModelo, novoAno, novaPotencia)

        CarrosRepositorio.inserir(novoCarro)
        contador ++
    }

    val carrinhos = CarrosRepositorio.listar()

    var consulta = "${carrinhos.size} Carros cadastrados:  \r\n"

    carrinhos.forEach {
        consulta += "id: ${it.idCarro} - ${it.Modelo}, ano: ${it.Ano}, potência: ${it.Potencia}"
        consulta += "\r\n"
    }
    JOptionPane.showMessageDialog(null, consulta)

    val idConsulta = JOptionPane.showInputDialog("Qual carro quer rever? Digite um id válido").toInt()
    if(CarrosRepositorio.idCarroValido(idConsulta)) {
        val CarrosEncontrado = CarrosRepositorio.recuperar(idConsulta)
        JOptionPane.showMessageDialog(null, "${CarrosEncontrado.idCarro} - modelo: ${CarrosEncontrado.Modelo}, ano: ${CarrosEncontrado.Ano}, potência: ${CarrosEncontrado.Potencia}")
    } else JOptionPane.showMessageDialog(null,"Carro com $idConsulta não encontrado")

    val seminovos = CarrosRepositorio.listarano()
    var mensagemsn = "${seminovos.size},Carros seminovos \r\n"
    seminovos.forEach {
        mensagemsn += "${it.idCarro} - modelo: ${it.Modelo}, ano: ${it.Ano}, potência: ${it.Potencia}"
        mensagemsn += "\r\n"
    }
    JOptionPane.showMessageDialog(null, mensagemsn)

    val Carros_Pot = CarrosRepositorio.listarpot()
    var mensagempt = "${Carros_Pot.size}, Carros Seminovos Pontentes"
    Carros_Pot.forEach {
        mensagempt += "${it.idCarro} - modelo: ${it.Modelo}, ano: ${it.Ano}, potência: ${it.Potencia}"
        mensagempt += "\r\n"
    }
    JOptionPane.showMessageDialog(null, mensagempt)


    val idExclusao = JOptionPane.showInputDialog("id para excluir").toInt()
    val excluidos = CarrosRepositorio.excluir(idExclusao)

    if (excluidos > 0) {
        JOptionPane.showMessageDialog(null, "Carro $idExclusao excluido!")
    } else {
        JOptionPane.showMessageDialog(null, "Carro não encontrado :(")
    }

}