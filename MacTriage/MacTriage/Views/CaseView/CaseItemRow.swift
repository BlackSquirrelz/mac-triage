//
//  CaseItemRow.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//

import SwiftUI

struct CaseItemRow: View {
    
    let item: Case
        
    var body: some View {
        VStack{
            Text("Analyst:\t\(item.analyst)")
            Text("Start Date:\t\(item.start)")
            Text("End Date:\t\(item.end)")
            Text("Description:\t\(item.description)")
            Text("Custodian:\t\(item.custodian)")
            Text("Email:\t\(item.email[0])")
            Text("Organisation:\t\(item.organisation)")
            Text("Evidence:\t\(item.evidence)")
            Text("Directory:\t\(item.directory)")
        }.multilineTextAlignment(.leading)
    }
}

struct CaseItemRow_Previews: PreviewProvider {
    static var previews: some View {
        
        CaseItemRow(item: Case(id: UUID(), start: "2023-04-01", end: "2023-08-01", description: "Lorem Ipsum", custodian: "Me", analyst: "You", email: ["mail@mail.com"], organisation: "MEh", directory: "C", evidence: "E"))
    }
}

