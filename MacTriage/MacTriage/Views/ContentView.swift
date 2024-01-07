//
//  ContentView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//

import SwiftUI

enum NavigationSelection: String, CaseIterable{
    case cases = label: {Text("Cases"), Image("shield.righthalf.filled")}
    case triage = "Triage"
    case analysis = "Analysis"
    case map = "Map"
    case report =  "Report"
    case about = "About"
}

struct ContentView: View {
    @State var segmentSelection : NavigationSelection = .cases
    var body: some View {
        Picker("", selection: $segmentSelection) {
                    ForEach(NavigationSelection.allCases, id: \.self) { option in
                    label: do {
                        Image("person.crop.circle")
                        Text(option.rawValue)
                            
                        }
                    }
                }.pickerStyle(SegmentedPickerStyle())
                    .padding()
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
