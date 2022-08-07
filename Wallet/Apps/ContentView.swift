//
//  ContentView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
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
            }//MARK: TABVIEW
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
