//
//  ActivityView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct ActivityView: View {
    //MARK: PROPERTY
    @State private var moveValues: [Double] = ActivityView.mockData(24, in: 0...300)
    @State private var exerciseValues: [Double] = ActivityView.mockData(24, in: 0...60)
    @State private var standValues: [Double] = ActivityView.mockData(24, in: 0...1)
    
    //MARK: FUNC
    static func mockData(_ count: Int, in range: ClosedRange<Double>) -> [Double] {
        (0..<count).map {_ in .random(in: range) }
    }
    
    //MARK: BODY
    var body: some View {
        VStack{
            BarChartsView(data: exerciseValues, colors: [.blue, .mint])
                .frame(width: 250,height: 250)
                
                .overlay {
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                        .frame(width: 300, height: 300)
                        .cornerRadius(12)
                }
            
            Divider()
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
            .previewLayout(.sizeThatFits)
    }
}
