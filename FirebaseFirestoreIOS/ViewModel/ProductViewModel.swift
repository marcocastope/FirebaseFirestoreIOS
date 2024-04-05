//
//  ProductViewModel.swift
//  FirebaseFirestoreIOS
//
//  Created by Marco Castope on 5/04/24.
//

import Foundation
import Combine

final class ProductViewModel : ObservableObject {
    
//    INPUTS
    @Published var name = ""
    @Published var price = ""
    @Published var stock = ""
    
//    OUTPUTS
    @Published var showMessage = false
    @Published var message = ""
    @Published var isValid = false
    
    private lazy var isNameValid: AnyPublisher<Bool, Never> = {
       $name
            .map{ !$0.isEmpty}
            .eraseToAnyPublisher()
    }()
    
    private lazy var isPriceValid: AnyPublisher<Bool, Never> = {
       $price
            .map{ !$0.isEmpty}
            .eraseToAnyPublisher()
    }()
    
    private lazy var isStockValid: AnyPublisher<Bool, Never> = {
       $stock
            .map{ !$0.isEmpty}
            .eraseToAnyPublisher()
    }()
    
    init() {
        Publishers.CombineLatest3(isNameValid, isPriceValid, isStockValid)
            .map{ $0 && $1 && $2}
            .assign(to: &$isValid)
    }
}
