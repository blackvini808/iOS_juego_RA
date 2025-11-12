//
//  pantalla_pista_interactuable.swift
//  juego_ra
//
//  Created by alumno on 12-11-25.
//

import SwiftUI

struct PantallaPistaInteractuable: View {
    var cuerpo_pista: PistaInteractuable
    
    var body: some View {
        Text(cuerpo_pista.interacciones)
        
        ForEach(cuerpo_pista.interacciones){ boton in
            VStack{
                Text(boton.mensaje).onTapGesture {
                    print("Ir a la pista \(boton.conecta_con_pista)")
                }
            }
        }
    }
}
