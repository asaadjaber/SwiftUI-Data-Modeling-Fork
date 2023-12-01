//
//  SupportingView.swift
//  SwiftUI-Data
//
//  Created by Asaad Jaber on 01/12/2023.
//

import Foundation
import SwiftUI

struct SupportingView: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        Button.init(action: {
            isOn.toggle()
        }, label: {
            Text(isOn ? "On" : "Off")
        })
    }
}

#Preview {
    SupportingView(isOn: Binding(projectedValue: .constant(false)))
}
