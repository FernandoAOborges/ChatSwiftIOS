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
        NavigationView{
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
                
                if viewModel.loading {
                    ProgressView()
                        .padding()
                }
                
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
                .alert(isPresented: $viewModel.formInvalid){
                    Alert(title: Text(viewModel.alertText))
                }
                
                Divider()
                    .padding()
                
                NavigationLink(
                    destination: RegisterView()) {
                    Text("Não tem uma conta? clique aqui.")
                        .foregroundColor(Color.black)
                }
                
             
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 32)
            .background(Color.white)
            .navigationTitle("Login")
            .navigationBarHidden(true)
        }
    }
      
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
