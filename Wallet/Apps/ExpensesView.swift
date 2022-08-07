//
//  ExpensesView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct ExpensesView: View {
    //MARK: PROPERTY
    @State private var searchField: String = ""
    
    var body: some View {
        NavigationView{
        
            VStack{
                //MARK: BUTTONS
                //MARK: LIST
                ExpensesListView()
                
            }
            .searchable(text: $searchField)
            .navigationTitle("Expenses")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                HStack{
                    Text("Add")
                    Image(systemName: "plus.circle")
                }
            }//MARK: Toolbar
        }//MARK: Navigation view
    }
}

struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExpensesView()
            ExpensesView()
                .preferredColorScheme(.dark)
        }
    }
}
