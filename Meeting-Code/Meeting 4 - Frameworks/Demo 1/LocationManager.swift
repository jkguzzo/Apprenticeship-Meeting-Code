//
//  LocationManager.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import CoreLocation
import Foundation
import Observation

@Observable
class LocationManager: NSObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    
    var authorizationStatus: CLAuthorizationStatus?
    var location: CLLocation?
    
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    func requestPermission() {
        let currentStatus = locationManager.authorizationStatus
        
        switch currentStatus {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            print("Requesting When In Use authorization...")
        case .denied, .restricted:
            print("Location access denied or restricted. Please enable in Settings.")
        case .authorizedAlways, .authorizedWhenInUse:
            print("Location already authorized.")
        @unknown default:
            print("Unknown authorization status")
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        self.authorizationStatus = manager.authorizationStatus
        
        if manager.authorizationStatus == .authorizedWhenInUse ||
            manager.authorizationStatus == .authorizedAlways {
            manager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.last else { return }
        
        self.location = latestLocation
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location manager failed with error: \(error.localizedDescription)")
    }
}
