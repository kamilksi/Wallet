//
//  SettingsView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        NavigationView{
            ScrollView{
                //MARK: ABOUT
                VStack{
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Wallet", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("I have created this app to help you with manage your own expenses.")
                            .font(.footnote)
                    }
                }
            }.navigationBarItems(trailing: Button(action: {
                AuthViewModel.shared.signOut()
            }, label: {
                Text("Log Out")
                    .font(.caption)
                    .foregroundColor(.black)
            }))
        }//MARK:  info view
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
