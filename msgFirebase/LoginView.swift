//
//  ContentView.swift
//  msgFirebase
//
//  Created by Fernando Abdalla on 15/04/22.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    

    
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(20.0)
            
            TextField("E-mail", text: $viewModel.email)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color(UIColor.separator))
                .cornerRadius(24.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 24.0)
                        .strokeBorder(Color("GreenColor"),
                        style: StrokeStyle(lineWidth: 2.0))
                )
                
                .padding(.bottom, 10)
            
            
            SecureField("Senha", text: $viewModel.password)
                .padding()
                .background(Color(UIColor.separator))
                .cornerRadius(24.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 24.0)
                        .strokeBorder(Color("GreenColor"),
                        style: StrokeStyle(lineWidth: 2.0))
                )
                .padding(.bottom, 10)
            
            Button(action: {
                viewModel.Login()
            }, label: {
                Text("Entrar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("GreenColor"))
                    .foregroundColor(Color.white)
                    .cornerRadius(24.0)
            })
            
            Divider()
                .padding()
            
            Button(action: {
                print("Entrar" )
            }, label: {
                Text("não tem uma conta? clique aqui.")
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 32)
        .background(Color.white)
    }
      
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
