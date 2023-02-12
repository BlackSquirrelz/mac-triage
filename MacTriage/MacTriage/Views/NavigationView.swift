//
//  NavigationView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Case")
            Text("Triage")
            Text("Analysis")
            Text("Report")
            Text("About")
        }
        .padding()
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
