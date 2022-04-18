//
//  RegisterView.swift
//  msgFirebase
//
//  Created by Fernando Abdalla on 16/04/22.
//

import SwiftUI


struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(20.0)
            
            TextField("Nome", text: $viewModel.name)
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
                viewModel.Register()
            }, label: {
                Text("Entrar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("GreenColor"))
                    .foregroundColor(Color.white)
                    .cornerRadius(24.0)
            }).alert(isPresented: $viewModel.formInvalid){
                Alert(title: Text(viewModel.alertText))
            }
            
    
         
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 32)
        .background(Color.white)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
