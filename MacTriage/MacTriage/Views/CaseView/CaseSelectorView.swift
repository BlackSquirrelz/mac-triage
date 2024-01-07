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
            VStack{
                List {
                    ForEach(cases) { section in
                        Section(header: Text(section.name).font(.headline)){
                            ForEach(section.details) { detail in
                                CaseItemRow(item: detail)                           }
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
