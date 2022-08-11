//
//  DashboardListView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct DashboardListView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Summary")
                .font(.title2)
                .fontWeight(.black)
            ScrollView{
                ForEach(0..<5){_ in
                    Divider()
                    HStack {
                        Text("Expense")
                        Spacer()
                    }
                }//MARK: LOOP
                
            }//MARK: SCROLLVIEW
            
        }//MARK: VSTACK
        .padding()
    }
}

struct DashboardListView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardListView()
    }
}
