//
//  AView.swift
//  SwiftUI-Data
//
//  Created by Asaad Jaber on 01/12/2023.
//

import Foundation
import SwiftUI

struct AView: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        List {
            Toggle(isOn: $isOn) {
                Text("SwitchA")
            }
        }.listStyle(.inset)
    }
}

#Preview {
    AView()
}
