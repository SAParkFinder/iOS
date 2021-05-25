//
//  UserModel.swift
//  ParkFinder
//
//  Created by Leonard Box on 5/25/21.
//

import Foundation
import FirebaseFirestore

struct User: Encodable, Decodable {
    let username: String
    let email: String
    let image: String
    let firstName: String
    let lastName: String
    let address: String
    let zipCode: Int
    let biography: String
    let birthday: Date
    let gender: String
    let seachName: [String]
}
