//
//  CategoryModel.swift
//  Wallet
//
//  Created by Kamil Książek on 10/08/2022.
//

import SwiftUI

struct CategoryModel: Encodable, Identifiable {
    let id: UUID
    let name: String
    let categoryImage: String

}

let sampleCategory: [CategoryModel] = [
    .init(id: UUID(), name: "Groceries", categoryImage: "cart"),
    .init(id: UUID(), name: "Transport", categoryImage: "tram"),
    .init(id: UUID(), name: "Utilities", categoryImage: "bag")
]

