object nave{
    const pasajeros = []

    method cantidadDePasajeros() = pasajeros.length()

    method pasajeroConMasVitalidad() = pasajeros.max({p => p.vitalidad()})

    method pasajeroConMenosVitalidad() = pasajeros.min({p => p.vitalidad()})

    //method estaEquilibrada() = pasajeros.any({p => p.vitalidad() < self.pasajeroConMasVitalidad() / 2}) 
    method estaEquilibrada() = self.pasajeroConMenosVitalidad() < self.pasajeroConMasVitalidad() / 2

    method estaElElegido() = pasajeros.any({p => p.esElElegido()})


    method chocar(){
        pasajeros.forEach({p => p.saltar()})

        pasajeros.clear()
    }

    method acelerar() {
        pasajeros.filter({p => !p.esElElegido()}).forEach({j => j.saltar()})
    }
}


object neo {
    var energia = 100

    method esElElegido() = true

    method vitalidad() = energia / 10

    method saltar() {
      energia = energia / 2
    }
}


object morfeo {
    var vitalidad = 8
    var estaCansado = false

    method esElElegido() = false

    method vitalidad() = vitalidad 

    method saltar() {
        vitalidad = 0.max(vitalidad - 1)
        estaCansado = !estaCansado
    } 


}


object trinity {
    method esElElegido() = false

    method vitalidad() = 0


    method saltar() {}
}