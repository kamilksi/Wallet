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
    @State private var isAddExpensePresented: Bool = false
    
    var body: some View {
        NavigationView{
        
            VStack{
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
                        .onTapGesture {
                            isAddExpensePresented.toggle()
                        }
                        .sheet(isPresented: $isAddExpensePresented) {
                            AddExpenseView()
                        }
                        
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
