//
//  User.swift
//  Wallet
//
//  Created by Kamil Książek on 24/08/2022.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    @DocumentID var id: String?
}
