//
//  NumerFormatter.swift
//  FirebaseFirestoreIOS
//
//  Created by Marco Castope on 8/04/24.
//

import Foundation


extension Double {
    func formatt() -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 2
        return formatter.string(from: NSNumber(value: self))
    }
}


