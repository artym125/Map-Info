//
//  ContentViewModel.swift
//  Map Info
//
//  Created by Ostap Artym on 24.10.2023.
//

import Foundation
import MapKit

class ContentViewModel: ObservableObject, CLLocationManagerDelegate {
    
    var locationManager:CLLocationManager?
    var searchTerm = ""
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    @Published private var places = [Place]()
    @Published private var selectedPlace: Place?
    
    var selectedPlaceName: String {
        guard let selectPlace = selectedPlace else { return ""}
        
        return selectPlace.name
    }
    
    var selectedPlaceAdress: String {
        guard let selectPlace = selectedPlace else { return ""}
        if let street = selectedPlace?.placemark.thoroughfare,
           let subAdrees = selectedPlace?.placemark.subThoroughfare {
            
            return street + " " + subAdrees
        }
        return ""
    }
    
    //1 - перевірка доступу до локації
    
    func checkLocationIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager?.delegate = self
        } else {
            print("alert")
        }
    }
    
    //2 - перевірка прав
    
    //3 - пошук
    
    //4 - вибір місця
    
}
