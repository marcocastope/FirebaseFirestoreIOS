//
//  ProductItemView.swift
//  FirebaseFirestoreIOS
//
//  Created by Marco Castope on 10/04/24.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(product.name)
            Text(product.price.formatt() ?? "")
            Text("Stock: \(product.stock)")
        }
    }
}

#Preview {
    ProductItemView(product: Product(name: "Mandarina", price: 2.2, stock: 10))
}
