import ratones.*

object tom {
	var energia = 80
	var posicion = 0
	
	method energia() = energia
	method velocidad() = 5 + (energia /10)
	method posicion() = posicion 
	method correrA(raton){
		energia = 0.max(energia - 0.5 * self.velocidad() * (self.posicion() - raton.posicion()).abs())
		posicion = raton.posicion()
	}
	method esMasVeloz(raton) = self.velocidad() > raton.velocidad()
}
