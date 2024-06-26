//
//  RegisterProductView.swift
//  FirebaseFirestoreIOS
//
//  Created by Marco Castope on 5/04/24.
//

import SwiftUI

struct RegisterProductView: View {
    
    @StateObject var productVM = ProductViewModel()
    
    var body: some View {
        Text("Registrar Producto")
            .font(.title)
            .fontWeight(.bold)
        
        Form(content: {
            Section {
                TextField("Nombre", text: $productVM.name)
                    .modifier(TextFieldModifier())
            }

            Section {
                TextField("Precio", text: $productVM.price)
                    .modifier(TextFieldModifier())
                    .keyboardType(.decimalPad)
            }

            Section {
                TextField("Stock", text: $productVM.stock)
                    .modifier(TextFieldModifier())
                    .keyboardType(.numberPad)
            }
            
            Section {
                Button(action: {
                    
                }, label: {
                    Text("Registrar")
                        .foregroundColor(.white)
                })
                .disabled(!productVM.isValid)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background( productVM.isValid ?  Color.green : Color.gray)
                .cornerRadius(10)
            }
        })
        .alert(isPresented: $productVM.showMessage, content: {
            Alert(title: Text("Mensaje"), message: Text(productVM.message), dismissButton: Alert.Button.default(Text("Ok")))
        })
    }
}

#Preview {
    RegisterProductView()
}
