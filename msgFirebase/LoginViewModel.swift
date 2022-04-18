//
//  LoginViewModel.swift
//  msgFirebase
//
//  Created by Fernando Abdalla on 16/04/22.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject{
    var email = ""
    var password = ""
    
    @Published var formInvalid = false
    var alertText = ""
    
    @Published var loading = false
    
    func Login (){
        loading = true
        print("email: \(email), senha: \(password) ")
        
        Auth.auth().signIn(withEmail: email, password: password){
            result, err in
            guard let user = result?.user, err == nil else{
                self.loading = false
                self.formInvalid = true
                self.alertText = err!.localizedDescription
                print(err)
                return
            }
            self.loading = false
            print("Usuário logado com sucesso \(user.uid)")
        }
    }
    
    
}
