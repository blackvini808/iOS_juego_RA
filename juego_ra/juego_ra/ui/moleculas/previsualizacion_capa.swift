//
//  previsualizacion_capa.swift
//  juego_ra
//
//  Created by alumno on 12-11-25.
//

import SwiftUI
import AVFoundation

struct CamaraPantallita: UIViewRepresentable {
    let capa_sesion: AVCaptureVideoPreviewLayer

    func makeUIView(context: Context) -> UIView {
        let vista = UIView()
        
        capa_sesion.videoGravity = .resizeAspectFill
        vista.layer.addSublayer(capa_sesion)
        
        return vista
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        DispatchQueue.main.async {
            capa_sesion.frame = uiView.bounds
        }
    }
}
