//
//  TModel.swift
//  SwiftUI-Data
//
//  Created by Asaad Jaber on 05/01/2024.
//

import Foundation
import SwiftUI
 
class TModel: ObservableObject {

    var address: String
    var vehicleVolume: VehicleVolume?
    
    enum VehicleVolume { case light, moderate, heavy }
    
    init(address: String, vehicleVolume: Int) {
        self.address = address
        self.vehicleVolume = lookupVehicleVolumeCase(val: vehicleVolume)
    }
    
    private func lookupVehicleVolumeCase(val: Int) -> VehicleVolume  {
        if val < 13200 {
            return .light
        } else if val < 21500 {
            return .moderate
        } else {
            return .heavy
        }
    }
}

// Source: Average Daily Traffic Counts - https://data.world/cityofchicago/average-daily-traffic-counts/workspace/file?filename=average-daily-traffic-counts-1.csv
