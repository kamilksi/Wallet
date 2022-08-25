//
//  MainView.swift
//  Wallet
//
//  Created by Kamil Książek on 25/08/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem{
                    Image(systemName: "chart.bar.xaxis")
                    Text("Dashboard")
                }
            ExpensesView()
                .tabItem{
                    Image(systemName: "folder.fill")
                    Text("Activity")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
