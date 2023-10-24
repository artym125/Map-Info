//
//  ResultModel.swift
//  Map Info
//
//  Created by Ostap Artym on 24.10.2023.
//

import Foundation
import MapKit

struct Place: Identifiable {
    var id: UUID = UUID()
    var name: String
    var placemark: MKPlacemark
    var coordinate: CLLocationCoordinate2D
    var adress: String?
}
