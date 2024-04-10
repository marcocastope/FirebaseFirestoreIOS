//
//  ProductsView.swift
//  FirebaseFirestoreIOS
//
//  Created by Marco Castope on 10/04/24.
//

import SwiftUI

struct ProductsView: View {
    @StateObject var productVM = ProductViewModel()
    @State var showSheet = false
    var body: some View {
        NavigationView(content: {
            VStack {
                List {
                    ForEach(productVM.products, id: \.self) { item in
                        ProductItemView(product: item)
                    }
                }.listStyle(.inset)
            }
            .navigationTitle("Productos")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        self.showSheet.toggle()
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            })
            .sheet(isPresented: self.$showSheet, content: {
                RegisterProductView()
            })
        })
    }
}

#Preview {
    ProductsView()
}
