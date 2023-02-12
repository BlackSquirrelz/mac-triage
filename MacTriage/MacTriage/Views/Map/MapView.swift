//
//  MapView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
            
    var body: some View {
        Map(coordinateRegion: $region)
        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
