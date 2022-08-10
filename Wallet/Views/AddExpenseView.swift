//
//  AddExpenseView.swift
//  Wallet
//
//  Created by Kamil Książek on 08/08/2022.
//

import SwiftUI

struct AddExpenseView: View {
    @State private var amount: String = ""
    var body: some View {
        VStack{
            //MARK: HEADER
            HStack{
                Spacer()
                ButtonCategoryView(text: "Income")
                Spacer()
                ButtonCategoryView(text: "Expense")
                Spacer()
            }
            TextField("Amount", text: $amount)
                .padding()
                .frame(width: 300, height: 50)
                
            //MARK: Amount Field
            //MARK: Category grid
            //MARK: Expense
            //MARK: Add button
        }
    }
}

struct AddExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpenseView()
    }
}
