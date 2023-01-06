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

var running = true

print("\(programm_name) - \(version_no)")

let argumentManager = ArgumentManager(suppliedArguments: CommandLine.arguments)


if argumentManager.debugMode {
    print("Here will be the debug mode, for now it does not have any function")
}

if argumentManager.interactiveMode == false {
    running = false
}

// Creates a new folder
func createNewDir(folderPath: String) {
    let fileManager = FileManager.default
    if !fileManager.fileExists(atPath: folderPath) {
        do {
            try fileManager.createDirectory(atPath: folderPath, withIntermediateDirectories: true, attributes: nil)
        } catch {
            print("Error creating folder: \(error)")
        }
    }
}


// Handler for User input functionality
func handleInput(input: String) {
    switch input {
        case "case":
            print("Opening case management system...")
        case "triage":
            print("Starting triage process...")
        case "report":
            print("Generating report...")
        case "exit":
            print("Exiting program...")
            exit(0)
        default:
            print("Invalid input. Please try again.")
    }
}

// Interactive mode
while running {
    print("Type 'exit' to quit:")
    let input = readLine()
    if input != nil {
        handleInput(input: input!)
    } else {
        print("Well I can't work with that, you need to supply something.")
    }
    if input == "exit" {
                exit(0)
            }
}





