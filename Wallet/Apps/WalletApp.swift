//
//  WalletApp.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI
import Firebase

@main
struct WalletApp: App {

    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
