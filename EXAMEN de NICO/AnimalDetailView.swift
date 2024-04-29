//
//  AnimalDetailView.swift
//  EXAMEN de NICO
//

import SwiftUI


struct AnimalDetalleView: View {
    var nombreAnimal:String = "León"
    var nombreImagen:String = "leon"
    var textoAnimal:String = "El texto loco"
    
    var body: some View {
        VStack {
            Text(nombreAnimal)
                .font(.largeTitle)
                .bold()
            Spacer()
            VStack {
                Image(nombreImagen)
                    .resizable()
                    .cornerRadius(29)
                    .padding()
                    .frame(width: 400, height: 400)
                .scaledToFit()
                .shadow(radius: 12, y: 33)
                
                Spacer()
                Text(textoAnimal)
                    .padding()
                Spacer()
            }
            .background(Image("fondo") .opacity(0.3))
                
        }
    }
}

#Preview {
        AnimalDetalleView()
    
}
