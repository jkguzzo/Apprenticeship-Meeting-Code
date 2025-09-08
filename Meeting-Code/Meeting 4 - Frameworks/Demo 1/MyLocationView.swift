//
//  MyLocationView.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI
import MapKit
import CoreLocation

struct MyLocationView: View {
    @State private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    )
    @State private var position = MapCameraPosition.automatic

    var body: some View {
        VStack(spacing: 20) {
            if locationManager.authorizationStatus == .notDetermined {
                Text("Location Permission Status: ")
                    .font(.headline)

                // TODO: check if locationManager's authorization status is nil
                // if nil, show "Determining status..."
                // if not nil, show statusDescription as String (see helper function below)

                Button("Request Location") {
                    // TODO: request permission from locationManager
                }
                .buttonStyle(.borderedProminent)

            } else if let location = locationManager.location {
                // TODO: define CLCoordinateLocation2D object from location variable
                
                // TODO: pass your position to map
                Map()
                    .onAppear {
                        // TODO: set region.center to be the coordinate object you created above
                        
                        // TODO: set position equal to MapCameraPosition.region(region)
                    }
            }
        }
    }

    func statusDescription(_ status: CLAuthorizationStatus) -> String {
            switch status {
            case .notDetermined:
                return "Not Determined"
            case .restricted:
                return "Restricted"
            case .denied:
                return "Denied"
            case .authorizedAlways:
                return "Authorized Always"
            case .authorizedWhenInUse:
                return "Authorized When In Use"
            @unknown default:
                return "Unknown"
            }
        }
}

#Preview {
    MyLocationView()
}

