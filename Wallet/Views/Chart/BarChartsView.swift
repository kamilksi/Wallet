//
//  BarChartsView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct BarChartsView: View {
    //MARK: PROPERTY
    var data: [Double]
    var colors: [Color]
    // [] is array
    
    var highestData: Double {
        let max =  data.max() ?? 1.0
        if max == 0 {return 1.0}
        return max
    }
    //MARK: Body
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        GeometryReader { geometry in
            HStack(alignment: .bottom, spacing: 4.0) {
                ForEach(data.indices, id: \.self) { index in
                    let width = (geometry.size.width / CGFloat(data.count)) - 4.0
                    let height = geometry.size.height * data[index] / highestData
                    
                    BarView(datum: data[index], colors: colors)
                        .frame(width: width, height: height, alignment: .bottom)
                }//MARK: loop
            }//MARK: hstack
            
        }//MARK: GEOMETRYREADER
    }
}

struct BarChartsView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartsView(data: [12,14,16,18,20,10,30], colors: [Color.blue, Color.mint])
    }
}
