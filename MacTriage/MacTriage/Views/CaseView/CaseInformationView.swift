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
    @State private var createTempDir = false
    @State private var caseFiles: String = "Case File Directory"
    @State private var evidenceFiles: String = "Evidence File Directory"
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Case Information")
                .font(.title2)
                .foregroundColor(.green)
            // Title of the case
            Divider()
            HStack {
                VStack{
                    HStack{
                        Label("Case Name", systemImage: "bolt.fill")
                        Spacer()
                        TextField("case_name", text: $case_name)
                    }
                    // User should be able to describe the case in a few words
                    HStack {
                        Label("Case Description", systemImage: "text.bubble")
                        Spacer()
                        TextField("description", text: $description)
                    }
                    // Name of the Custodian
                    HStack {
                        Label("Custodian", systemImage: "person.fill")
                        Spacer()
                        TextField("custodian", text: $custodian)
                        
                    }
                    
                }
            }
            Divider()
            // Analyst responsible for the case
            HStack{
                VStack {
                    HStack {
                        Label("Analyst", systemImage: "person.text.rectangle.fill")
                        Spacer()
                        TextField("analyst", text: $analyst_name)
                        
                    }
                    
                    // Contact Details of the Analyst
                    HStack {
                        Label("E-Mail", systemImage: "envelope.fill")
                        Spacer()
                        TextField("email", text: $analyst_email)
                    }
                    
                    // Organisation that did the Analysis
                    HStack {
                        Label("Organisation", systemImage: "building.fill")
                        Spacer()
                        TextField("organisation", text: $organisation)
                    }
                }
            }
            Divider()
            HStack {
                VStack{
                    // Case Files
                    HStack {
                        Label("Case Files", systemImage: "case.fill")
                        Spacer()
                        TextField("case_files", text: $caseFiles)
                    }
                    // Evidence Files
                    HStack {
                        Label("Evidence Directory", systemImage: "building.columns.fill")
                        Spacer()
                        TextField("evidence_directory", text: $evidenceFiles)
                    }
                }
            }
            Spacer()
        
            HStack {
                Button("Create", action: CaseManagement.CreateCaseDirectory)
                Button("Select", action: CaseManagement.SelectCaseDirectory)
                Button("Delete", action: CaseManagement.DeleteCaseDirectory)
            }
        }
    }
}

struct CaseInformationView_Previews: PreviewProvider {
    static var previews: some View {
        CaseInformationView()
    }
}
