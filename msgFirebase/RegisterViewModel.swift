//
//  RegisterViewModel.swift
//  msgFirebase
//
//  Created by Fernando Abdalla on 16/04/22.
//

import Foundation

class RegisterViewModel : ObservableObject{
    var email = ""
    var password = ""
    var name = ""
    
    func Register (){
        print("name:\(name), email: \(email), senha: \(password) ")
    }
}
