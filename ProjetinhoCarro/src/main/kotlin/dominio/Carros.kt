package dominio

data class Carros(var idCarro:Int, var Modelo:String, var Ano:Int, var Potencia:Double) {
    constructor() : this(0,"",0,0.0)
}