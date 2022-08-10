//
//  ExpensesModel.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import Foundation
import SwiftUI

struct Expenses: Identifiable, Codable{
    let id: UUID
    let category: String
    let description: String
    let cost: String
}
