//
//  Product.swift
//  FirebaseFirestoreIOS
//
//  Created by Marco Castope on 5/04/24.
//

import Foundation
import FirebaseFirestoreSwift

struct Product : Codable {
    @DocumentID var id: String?
    let name: String
    let price: Double
    let stock: Int
}
