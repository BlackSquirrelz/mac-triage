//
//  Case.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 21.08.23.
//

import Foundation

struct Cases: Codable, Identifiable {
    var id: UUID
    var name: String
    var synopsis: String
    var details: [Case]
}

//TODO: change datatypes one by one after identifiying the requirements for them
struct Case: Codable, Equatable, Identifiable {
    var id: UUID
    var start: String
    var end: String
    var description: String
    var custodian: String
    var analyst: String
    var email: [String]
    var organisation: String
    var directory: String
    var evidence: String
}

//TODO: Write to case_collection.json
func saveCase(caseDirectory: URL, caseData: [String]) {
    
    let jsonString = "{\"location\": \(caseData[0])\"}"
    let caseJSON = caseDirectory.appendingPathComponent("case.json")
    do {
        try jsonString.write(to: caseJSON, atomically: true, encoding: .utf8)
    } catch {
        print("An error occured writing \(jsonString) to \(caseJSON)")
    }
}
