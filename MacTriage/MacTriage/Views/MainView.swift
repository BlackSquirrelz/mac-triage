//
//  MainView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 16.09.23.
//

import SwiftUI



struct MainView: View {
    
    class NavigationModel: ObservableObject {
        @Published var selectedNavigationItemId: NavigationItem?
    }
    
    struct NavigationItem: Identifiable, Hashable {
        let id: UUID = UUID()
        let name: String
    }
    
    struct NavigationDetail: View {
        let navigationItem: NavigationItem
        @EnvironmentObject var navigationModel: NavigationModel

        var body: some View {
            Text("Thing: \(navigationItem.name)")
        }
    }
    
    class NavigationData: ObservableObject {
        @Published var navdata: [NavigationItem] = [
            NavigationItem(name: "Cases"),
            NavigationItem(name: "Analysis"),
            NavigationItem(name: "Map")
        ]
    }
    
    @Binding var navigationItems: [NavigationItem]
    @EnvironmentObject var navigationModel:          NavigationModel
    
    var body: some View {

        NavigationSplitView {
            List(selection: $navigationModel.selectedNavigationItemId) {
                Section("Cases") {
                    CaseSelectorView()
                }
            }
        } detail: {
            NavigationDetail(navigationItem: navigationModel.selectedNavigationItemId ?? NavigationItem(name: "Select"))
        }
    }
}

/*struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        //MainView()
    }
}*/
