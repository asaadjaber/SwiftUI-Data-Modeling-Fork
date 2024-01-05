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
            LazyVGrid(columns: columns) {
                Text(traffic.address)
                switch traffic.vehicleVolume {
                case .light:
                    Ellipse().frame(width: 30, height: 30, alignment: .center)
                case .moderate:
                    HStack {
                        ForEach(1..<3) { _ in
                            Ellipse().frame(width: 30, height: 30, alignment: .center).tint(.gray)
                        }
                    }
                case .heavy:
                    HStack {
                        ForEach(1..<4) { _ in
                            Ellipse().frame(width: 30, height: 30, alignment: .center)
                        }
                    }
                case .none:
                    AnyView(_fromValue: Int())
                }
            }.padding([.leading, .trailing], 30)
        }
    }
}

#Preview {
    SView(traffic: TModel(address: "125 East", vehicleVolume: 700))
}
