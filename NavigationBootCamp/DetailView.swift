//
//  DetailView.swift
//  NavigationBootCamp
//
//  Created by Daniel Delgado on 23/08/23.
//

import SwiftUI

struct DetailView: View {
    let text: String
    var body: some View {
        VStack{
            Text("Detail View")
            Text(text)
        }
    }
}

#Preview {
    DetailView(text: "Example")
}
