//
//  TotalView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct TotalView: View {
    //MARK: PROPERTIES
    var expenses: Double = 5.54
    
    var body: some View {
        VStack {
            Text("Total expenses")
                .font(.subheadline)
                .fontWeight(.black)
            Text("$\(expenses.formatted())")
                .font(.largeTitle)
        }
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView()
            .previewLayout(.sizeThatFits)
    }
}
