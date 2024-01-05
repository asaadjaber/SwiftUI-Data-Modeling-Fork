//
//  StreetCarVolumeLevelView.swift
//  SwiftUI-Data
//
//  Created by Asaad Jaber on 05/01/2024.
//

import Foundation
import SwiftUI

struct StreetCarVolumeLevelView: View {
    let columns: [GridItem]!
    @ObservedObject var traffic: TModel
    
    var body: some View {
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

#Preview {
    StreetCarVolumeLevelView(columns: [
        .init(.flexible(minimum: 0, maximum: 150), alignment: .center),
        .init(.flexible(minimum: 0, maximum: 150), alignment: .center)
    ],
                             traffic: TModel(address: "34 East", vehicleVolume: 700))
}
