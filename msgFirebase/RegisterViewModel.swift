//
//  RegisterViewModel.swift
//  msgFirebase
//
//  Created by Fernando Abdalla on 16/04/22.
//

import Foundation
import FirebaseAuth

class RegisterViewModel : ObservableObject{
    var email = ""
    var password = ""
    var name = ""
    
    @Published var formInvalid = false
    var alertText = ""
    
    @Published var loading = false
    
    func Register (){
        loading = true
        print("name:\(name), email: \(email), senha: \(password) ")
        
        Auth.auth().createUser(withEmail: email, password: password){
            result, err in
            guard let user = result?.user, err == nil else {
                self.formInvalid = true
                self.alertText = err!.localizedDescription
                print(err)
                self.loading = false
                return
            }
            print("Usuário criado com sucesso \(user.uid)")
            self.loading = false
        }
        
    }
}
