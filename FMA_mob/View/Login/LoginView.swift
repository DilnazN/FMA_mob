//
//  LoginView.swift
//  FMA_mob
//
//  Created by Dilnaz Nauryzbayeva on 15.09.2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Login Page")
                .font(.largeTitle)
                .padding()
            
            // Add additional login form fields and buttons here
        }
        .navigationTitle("Login")
        .navigationBarBackButtonHidden(false)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
