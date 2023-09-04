//
//  ContentView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ActionNavigationView()
            Divider()
                CaseSelectorView()
        //CaseInformationView()
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
