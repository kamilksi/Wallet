//
//  CategoryPickerView.swift
//  Wallet
//
//  Created by Kamil Książek on 10/08/2022.
//

import SwiftUI

struct CategoryPickerView: View {
    enum Category: String, CaseIterable, Identifiable {
        case groceries, transport, utilities
        var id: Self { self }
    }
    

    @State private var selectedCategory: Category = .transport

    var body: some View {
        VStack{
            Picker("Category", selection: $selectedCategory) {
                ForEach(Category.allCases) { category in
                    Text(category.rawValue.capitalized)
                }
            }
        }
        .pickerStyle(.segmented)
        .padding()
    }
}

struct CategoryPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryPickerView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
