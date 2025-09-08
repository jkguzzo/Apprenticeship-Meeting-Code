//
//  MapView.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import MapKit
import SwiftUI

struct MapView: View {
    // TODO: define @State variable 'position' of type MapCameraPosition
    
    // TODO: define @State variable 'mapType' of type MapStyle
    
    // TODO: define @State variable 'region' of type MKCoordinateRegion
    // hint: use MKCoordinateRegion(center: CLLocationCoordinate2D, span: MKCoordinateSpan) as initializer
    // use CLLocationCoordinate2D(latitude: Double, longitude: Double) initializer and pass in the latitude and longitude of your favorite place
    // use MKCoordinateSpan(latitudeDelete: Double, longitudeDelta: Double) initializer and experiment with small decimal values

    var body: some View {
        // TODO: add position to Map
        Map() {
            // TODO: add Marker called Sitterson with the CLLocationCoordinate2D object of the region variable
        }
        // TODO: add mapStyle() modifier passing in mapType variable
        .onAppear {
            // TODO: set position equal to MapCameraPosition.region(region)
        }
        
    }
}

#Preview {
    MapView()
}
