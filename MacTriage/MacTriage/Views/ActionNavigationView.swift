//
//  ActionNavigationView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//

import SwiftUI

struct ActionNavigationView: View {
        
    var body: some View {
        NavigationStack(){
            //ForEach (cases) { item in
            //Text(item.name)
            List{
                Text("Case")
                Text("Triage")
                Text("Analysis")
                Text("Map")
                Text("Report")
                Text("About")
            }
        }
        .padding()
        .navigationTitle("Menu")
    }
}

struct ActionNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ActionNavigationView()
    }
}
