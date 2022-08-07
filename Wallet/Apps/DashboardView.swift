//
//  DashboardView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct DashboardView: View {
    @State private var isSettingsPresented: Bool = false
    var body: some View {
        
        NavigationView {
            VStack{
                //MARK: Total
                TotalView()
                Spacer()
                //MARK: CHARTS
                ActivityView()
                    .padding()
                Spacer()
                //MARK: Scroll view with expense
                DashboardListView()
            }//MARK: vstack
            .navigationTitle("Wallet")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Image(systemName: "gearshape")
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }.sheet(isPresented: $isSettingsPresented) {
                        SettingsView()
                    }
            }
            
            
        }//MARK: navigation view
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DashboardView()
            DashboardView()
                .preferredColorScheme(.dark)
        }
    }
}
