//
//  ContentView.swift
//  msgFirebase
//
//  Created by Fernando Abdalla on 15/04/22.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding()
            
            TextField("E-mail", text: $email)
                .padding()
                .border(Color(UIColor.separator))
            
            SecureField("Senha", text: $password)
                .padding()
                .border(Color(UIColor.separator))
            
            Button(action: {
                print("Entrar" )
            }, label: {
                Text("Entrar")
            })
            
            Divider()
            
            Button(action: {
                print("Entrar" )
            }, label: {
                Text("não tem uma conta? clique aqui.")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
