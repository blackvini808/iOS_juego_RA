//
//  pantalla_pista_informacion.swift
//  juego_ra
//
//  Created by alumno on 12-11-25.
//

import SwiftUI

struct PantallaPistaInformacion: View{
    var pista: PistaInformacion
    
    var body: some View{
        Text(pista.informacion)
    }
}
