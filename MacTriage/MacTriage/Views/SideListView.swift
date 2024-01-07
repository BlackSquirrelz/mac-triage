//
//  SideListView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 16.09.23.
//

import SwiftUI

struct SideListView: View {
    var body: some View {
        List {
            Text("Triage")
            Text("Analysis")
            Text("Map")
            Text("Report")
            Text("About")
        }
    }
}

struct SideListView_Previews: PreviewProvider {
    static var previews: some View {
        SideListView()
    }
}
