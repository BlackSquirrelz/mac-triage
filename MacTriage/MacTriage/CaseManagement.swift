//
//  CaseManagement.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//

import Foundation

struct CaseManagement  {
    
    // Let the user choose a
    static let currentDirectory = FileManager.default.currentDirectoryPath
    //static let TemporaryCaseDirectory = FileManager.default.temporaryDirectory.appending(path: "\(Date().ISO8601Format().replacingOccurrences(of: ":", with: "_"))-MacTriage")
    static let CaseDirectory = FileManager.default.homeDirectoryForCurrentUser.appending(path: "\(Date().ISO8601Format().replacingOccurrences(of: ":", with: "_"))-MacTriage")
        static let caseFile = CaseDirectory.appending(path: "case.json")
    static let caseDB = CaseDirectory.appending(path: "case.db")
    static let fm = FileManager.default
    
    static func CreateCaseDirectory() {
        do {
            try fm.createDirectory(at: CaseDirectory, withIntermediateDirectories: true, attributes: nil)
            print("Case created @ \(CaseDirectory.relativePath)")
            CreateDataDirectory()
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
}

