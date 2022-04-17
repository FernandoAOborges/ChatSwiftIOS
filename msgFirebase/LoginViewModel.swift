//
//  LoginViewModel.swift
//  msgFirebase
//
//  Created by Fernando Abdalla on 16/04/22.
//

import Foundation

class LoginViewModel: ObservableObject{
    var email = ""
    var password = ""
    
    func Login (){
        print("email: \(email), senha: \(password) ")
    }
    
    
}
