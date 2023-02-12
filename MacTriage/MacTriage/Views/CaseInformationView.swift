//
//  CaseInformationView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//

import SwiftUI

struct CaseInformationView: View {
    @State private var case_name: String = "Test"
    @State private var analyst_name: String = "BlackSquirrelz"
    @State private var analyst_email: String = "E-Mail"
    @State private var organisation: String = "Organisation"
    @State private var custodian: String = "Custodian"
    @State private var description: String = "Case Description"
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Case Information")
                .font(.title)
                .multilineTextAlignment(.leading)
            HStack {
                Label("Case Name", systemImage: "bolt.fill")
                Spacer()
                TextField("case_name", text: $case_name)
            }
            HStack {
                Label("Analyst", systemImage: "person.text.rectangle.fill")
                Spacer()
                TextField("analyst", text: $analyst_name)
                
            }
            HStack {
                Label("E-Mail", systemImage: "envelope.fill")
                Spacer()
                TextField("email", text: $analyst_email)
            }
            HStack {
                Label("Organisation", systemImage: "building.fill")
                Spacer()
                TextField("organisation", text: $organisation)
            }
            HStack {
                Label("Custodian", systemImage: "person.fill")
                Spacer()
                TextField("custodian", text: $custodian)
                
            }
            HStack {
                Label("Case Description", systemImage: "text.bubble")
                Spacer()
                TextField("description", text: $description)
            }
            Spacer()
            HStack {
                Text("Create")
                Text("Delete")
                Text("Select")
            }
        }
        .padding()
        .border(.white)
    }
}

struct CaseInformationView_Previews: PreviewProvider {
    static var previews: some View {
        CaseInformationView()
    }
}
