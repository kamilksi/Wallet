//
//  RegisterView.swift
//  Wallet
//
//  Created by Kamil Książek on 24/08/2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
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
                    Button(action: {
                        viewModel.login(withEmail: email, password: password)
                    }, label: {
                        Text("Sign Up")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .frame(width: 150, height: 50)
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .clipShape(Capsule())
                    })
                    Spacer()
                    NavigationLink(destination: RegisterView().navigationBarHidden(true), label: {
                        HStack {
                            Text("Don't have an account?")
                            Text("Log In")
                                .fontWeight(.bold)
                        }.foregroundColor(.black)
                    })
                }.padding()
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
