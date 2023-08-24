//
//  FirstView.swift
//  NavigationBootCamp
//
//  Created by Daniel Delgado on 23/08/23.
//

import SwiftUI

struct FirstView: View {
    @State var isPresented = false
    @State var path = NavigationPath()
    var body: some View {
       
        VStack {
            //para que funcione el path los navigation tiene que tener un value que es el que se va agrenado a la colecciond del path
            NavigationStack(path: $path){
                List{
                    //MARK: Navigationlin con value funciona con el navigation destination y el tpo de dato que se pogna en value es el que se tiene que poner en el navigationDestination(for:)
                    NavigationLink("Show A", value: "Show A")
                    NavigationLink("Show B", value: 1)
                    NavigationLink("Show C", value: "Show C")
                    Button(action: {
                        isPresented.toggle()
                    }, label: {
                        Text("isPresentedDestination")
                    })
                       
                }
                //NO SE USA NAVIGATIONPATH
                .navigationDestination(for: String.self) { value in
                //passed a String and works for Link A & Link C: \(value)")
                    DetailView(text: value)
                }
                //NO SE USA NAVIGATIONPATH
                .navigationDestination(for: Int.self) { value in
                    DetailView(text: "\(value)")
                //passed a Int  and works for Link B only: \(value)")
                }
                //NO SE USA NAVIGATIONPATH
                .navigationDestination(isPresented: $isPresented){
                    Text("isPresented Destination View")
                    //Works with a boolean value
                }
                .navigationTitle("RootView")
            }
            VStack{
                Text("Path Counter:")
                Text("\(path.count)")
            }
        }
    }
}

#Preview {
    NavigationStack{
        FirstView()
    }
   
}
