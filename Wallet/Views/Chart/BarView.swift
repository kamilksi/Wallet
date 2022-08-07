//
//  BarView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct BarView: View {
    //MARK: PROPERTY
    var datum: Double
    var colors: [Color]
    var gradient: LinearGradient {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
    }
    //MARK: BODY
    var body: some View {
        Rectangle()
            .fill(gradient)
        // If the datum is 0.0 then view is not visible
            .opacity(datum == 0.0 ? 0.0 : 1.0)
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(datum: 12.0, colors: [Color.blue, Color.mint])
            .ignoresSafeArea()
    }
}
