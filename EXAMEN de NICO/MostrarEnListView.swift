//
//  MostrarEnListView.swift
//  EXAMEN de NICO
//
//  Created by Mac on 29/4/24.
//


import SwiftUI

struct MostrarEnListView: View {
    var nombreImagen:String
    var nombreAnimal:String
    var body: some View {
        HStack{
            Spacer()
            HStack{
//                Text(nombreAnimal)
//                    .font(.custom("Helvetica-Medium", size:34))
//                    .bold()
//                    .foregroundColor(.black)
                Image(nombreImagen)
                    .resizable()
                    .scaledToFit()
                    .frame(width:200, height: 200)
                    .clipped()
                    .cornerRadius(22)
                    .overlay(
                        Color.black
                            .opacity(0.5)
                            .cornerRadius(22)

                    )
                    .overlay(
                        Text(nombreAnimal)
                            .padding()
                            .font(.title)
                            .foregroundColor(.white),
                        alignment: .top
                        )
                
                
            }
            Spacer()
        }.padding(.top, 5)
            .padding(.bottom,5)
    }
}

#Preview {
        MostrarEnListView(nombreImagen: "leon", nombreAnimal: "León")
}
