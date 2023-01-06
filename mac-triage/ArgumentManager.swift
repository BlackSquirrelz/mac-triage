//
//  ArgumentManager.swift
//  mac-triage
//
//  Created by BlackSquirrelz on 06.01.23.
//

import Foundation

class ArgumentManager {
    
    // Set default values for arguments
    var debugMode = false
    let availableArguments = ["--debug", "--version"]
    
    init(suppliedArguments: [String]) {
        setArguments(suppliedArguments)
    }
    
    func setArguments(_ args:[String]) {
        for(x,arg) in (args).enumerated() {
            if x == 0 || !arg.starts(with: "-") {
                continue
            } else if arg == "-h" || arg == "--help" {
                self.printHelp()
            } else if arg == "--debug" {
                debugMode.toggle()
            } else if arg == "--version" {
                print(version_no)
            }
        }
    }
    func printHelp() {
        print("--debug -> Toggle Debug Mode on and Off")
        print("--version -> Get Application Version")
    }
}
