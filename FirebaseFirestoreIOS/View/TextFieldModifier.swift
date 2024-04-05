//
//  TextFieldModifier.swift
//  FirebaseFirestoreIOS
//
//  Created by Marco Castope on 5/04/24.
//

import Foundation
import SwiftUI

struct TextFieldModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .autocorrectionDisabled()
            .autocapitalization(.none)
    }
}
