//
//  CaseManagement.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.

/*Code inspired by @Aftermath
Copyright 2022 JAMF Software, LLC
https://github.com/jamf/aftermath/blob/main/LICENSE.md
*/

import Foundation
struct CaseManagement  {
    
    // Get the current directory
    static let currentDirectory = FileManager.default.currentDirectoryPath
    
    //static let TemporaryCaseDirectory = FileManager.default.temporaryDirectory.appending(path: "\(Date().ISO8601Format().replacingOccurrences(of: ":", with: "_"))-MacTriage")
    static let CaseDirectory = FileManager.default.homeDirectoryForCurrentUser.appending(path: "\(Date().ISO8601Format().replacingOccurrences(of: ":", with: "_"))-MacTriage")
        static let caseFile = CaseDirectory.appending(path: "case.json")
    
    // Set path for the case Database
    static let caseDB = CaseDirectory.appending(path: "case.db")
    static let fm = FileManager.default
    
    static func CreateCaseDirectory() {
        do {
            try fm.createDirectory(at: CaseDirectory, withIntermediateDirectories: true, attributes: nil)
            print("Case created @ \(CaseDirectory.relativePath)")
            CreateDataDirectory()
            CreateCaseDatabase()
        } catch {
            print(error)
        }
    }
    
    static func CreateDataDirectory() {
        var localCaseDir: URL
        
        localCaseDir = CaseDirectory
        do {
            try fm.createDirectory(at: localCaseDir, withIntermediateDirectories: true, attributes: nil)
            print("Created Data Directory @ \(localCaseDir)")
        } catch {
            print(error)
        }
    }
    
    static func SelectCaseDirectory() {
        print("Case Selected")
    }
    static func DeleteCaseDirectory() {
        print("Case Deleted... Not really but yeah.")
    }
    
    
    // Function to create the Database @ the case directory
    static func CreateCaseDatabase() {
        print("CaseDB Created @ \(caseDB)")
    }
    
}

