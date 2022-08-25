//
//  AuthViewModel.swift
//  Wallet
//
//  Created by Kamil Książek on 24/08/2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?

    static let shared = AuthViewModel()

    init() {
        userSession = Auth.auth().currentUser
    }

    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Login failed \(error.localizedDescription)")
                return
            }
        guard let user = result?.user else { return }
        self.userSession = user
        }
    }

    func register(withEmail email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Register failed \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("Sucessfully registered!")
        }
    }
    func signOut(){
        do { try Auth.auth().signOut() }
        catch { print("Already logged out") }
    }
}
