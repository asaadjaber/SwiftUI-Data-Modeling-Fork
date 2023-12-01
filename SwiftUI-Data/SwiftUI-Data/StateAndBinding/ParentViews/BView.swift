//
//  BView.swift
//  SwiftUI-Data
//
//  Created by Asaad Jaber on 01/12/2023.
//

import Foundation
import SwiftUI

struct BView: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        List {
            Toggle(isOn: $isOn, label: {
                Text("SwitchB")
            })
            SupportingView(isOn: $isOn)
        }.listStyle(.inset)
    }
}

#Preview {
    BView()
}
