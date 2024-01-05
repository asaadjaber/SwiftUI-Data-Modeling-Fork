//
//  SView.swift
//  SwiftUI-Data
//
//  Created by Asaad Jaber on 05/01/2024.
//

import Foundation
import SwiftUI

struct SView: View {
    private let columns: [GridItem] = [
        .init(.flexible(minimum: 0, maximum: 150), alignment: .center),
        .init(.flexible(minimum: 0, maximum: 150), alignment: .center)
    ]
    
    @StateObject var traffic: TModel = TModel(address: "354 West", vehicleVolume: 800)
    
    var body: some View {
        ScrollView {
            Grid {
                GridRow(alignment: .center) {
                    Text("Street")
                    Text("Traffic Level")
                }.padding([.leading, .trailing], 50)
            }
            StreetCarVolumeLevelView(columns: columns, traffic: traffic)
        }
    }
}

#Preview {
    SView(traffic: TModel(address: "125 East", vehicleVolume: 700))
}

