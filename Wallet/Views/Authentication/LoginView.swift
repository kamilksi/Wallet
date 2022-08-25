//
//  LoginView.swift
//  Wallet
//
//  Created by Kamil Książek on 24/08/2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.5, green: 0.6, blue: 0.7)
                    .ignoresSafeArea()
                VStack{
                    Text("Wallet")
                        .font(.largeTitle)
                        .fontWeight(.black)
                    Spacer()
                    VStack(spacing: 20) {
                        AppTextField(placeholderText: "Email", isSecureField: false, text: $email)
                        AppTextField(placeholderText: "Password", isSecureField: true, text: $password)
                    }
                    Spacer()
                }.padding()
            }
        }
    }
}

    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
