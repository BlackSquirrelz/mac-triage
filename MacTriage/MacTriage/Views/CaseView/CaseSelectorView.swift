//
//  CaseSelectorView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 04.09.23.
//

import SwiftUI

struct CaseSelectorView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(cases) { item in
                    Section(item.name) {
                        Text("This is \(item.name) - \(item.synopsis)")
                        ForEach(item.details) { detail in
                            Text("Custodian: \(detail.custodian)\tStart Date: \(detail.start)\tEnd Date: \(detail.end)")
                        }
                    }
                }
            }
        }
    }
}

struct CaseSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        CaseSelectorView()
    }
}

let cases = Bundle.main.decode([Cases].self, from: "case_collection.json")
