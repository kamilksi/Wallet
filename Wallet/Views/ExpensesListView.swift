//
//  ExpensesListView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct ExpensesListView: View {
    var body: some View {
        VStack{
            
            
            CategoryPickerView()
            ScrollView{
                ForEach(0..<14){_ in
                    Divider()
                    HStack {
                        Image(systemName: "plus.circle")
                        VStack {
                            Text("Expense").fontWeight(.black)
                            Spacer()
                            Text("14 hours ago")
                        }
                        .padding(.horizontal, 20)
                        Spacer()
                        Text("19.99$")
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
        ExpensesListView()
    }
}
