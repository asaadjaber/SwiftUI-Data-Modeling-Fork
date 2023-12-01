//
//  ChildView.swift
//  SwiftUI-Data
//
//  Created by Asaad Jaber on 01/12/2023.
//

import Foundation
import SwiftUI

struct ChildView: View {
    let isOn: Bool
        
    var body: some View {
        Text(isOn ? "On": "Off")
    }
}

#Preview {
    ChildView(isOn: false)
}
