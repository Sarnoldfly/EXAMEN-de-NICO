//
//  ContentView.swift
//  EXAMEN de NICO
//
//  Created by Mac on 29/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var animal = [
        AnimalLista(nombreImagen: "leon", nombreAnimal: "Leon", textoAnimal: "El león, conocido como el EL REY DE LA SELVA, es una especie emblemática del reino animal. Habitante de África subsahariana y algunas áreas de Asia, como la India, este majestuoso felino vive en grupos llamados manadas o coaliciones."),
        
                         AnimalLista(nombreImagen: "nudibranquio", nombreAnimal: "Nudibranquio", textoAnimal: "El nudibranquio es una criatura marina fascinante, perteneciente al grupo de los moluscos gasterópodos. Estos animales, también conocidos como babosas de mar, son famosos por su belleza y diversidad de colores y formas. Habitan en diversos hábitats marinos alrededor del mundo, desde aguas tropicales hasta polares. Los nudibranquios carecen de concha protectora y en su lugar presentan estructuras dérmicas llamadas ceratas."),
                         
                         AnimalLista(nombreImagen: "botella", nombreAnimal: "Botella", textoAnimal: "La botella de plástico, omnipresente en nuestra vida cotidiana, es un objeto de doble filo. Por un lado, proporciona conveniencia y portabilidad para transportar líquidos. Por otro, su uso excesivo contribuye a la contaminación ambiental. Hecha de polietileno tereftalato (PET), una forma común de plástico, tarda siglos en descomponerse, afectando gravemente los ecosistemas marinos y terrestres.")]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(animal) { animal in
                    NavigationLink(destination:
                                    AnimalDetalleView(nombreAnimal: animal.nombreAnimal, nombreImagen: animal.nombreImagen, textoAnimal: animal.textoAnimal)){
                        MostrarEnListView(nombreImagen: animal.nombreImagen, nombreAnimal: animal.nombreAnimal)
                    }
                }
            }.navigationBarTitle("Mis 3 animales Favoritos", displayMode: .inline)
            
        }
    }
}

#Preview {
    ContentView()
}

