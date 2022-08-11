//
//  ExpensesListView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct ExpensesListView: View {
    //MARK: PROPERTIES
    var expenseImage: String = ""
    var categoryExpense: String = ""
    var descriptionExpense: String = ""
    var cost: String = ""
    var body: some View {
        VStack{
            
            
            CategoryPickerView()
            ScrollView{
                ForEach(0..<14){_ in
                    Divider()
                    HStack {
                        Image(systemName: expenseImage)
                        VStack {
                            Text(categoryExpense).fontWeight(.black)
                            Spacer()
                            Text(descriptionExpense)
                        }
                        .padding(.horizontal, 20)
                        Spacer()
                        Text(cost)
                            .fontWeight(.black)
                    }
                }//MARK: LOOP
                
            }//MARK: SCROLLVIEW
            .padding(.horizontal, 10)
        }//MARK: VSTACK
        
    }
}

struct ExpensesListView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesListView(expenseImage: "plus.circle", categoryExpense: "Grocery", descriptionExpense: "Chips,bacon,water", cost: "25,41")
    }
}
