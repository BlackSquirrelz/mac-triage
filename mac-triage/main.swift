//
//  main.swift
//  mac-triage
//
//  Created by BlackSquirrelz on 05.09.22.
//

import Foundation

let programm_name = "Nidaba"
let version_no = "0.1"
let collection_db = "~/Desktop/swift_created.db"

print("\(programm_name) - \(version_no)")

let argumentManager = ArgumentManager(suppliedArguments: CommandLine.arguments)

if argumentManager.debugMode {
    print("Here will be the debug mode, for now it does not have any function")
}

