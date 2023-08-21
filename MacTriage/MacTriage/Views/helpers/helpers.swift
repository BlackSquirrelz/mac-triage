//
//  helpers.swift
//  CollectionScripts
//
//  Created by BlackSquirrelz on 13.08.23.
//

import Foundation

// Conversion Functions
func convertBytesToGb(noBytes: UInt64) -> UInt64 {
    return noBytes / (1024 * 1024 * 1024)
}

func convertBytesToMb(noBytes: UInt64) -> UInt64 {
    return noBytes / (1024 * 1024)
}

func convertTimeIntervalToHours(noSeconds: Double) -> Double {
    return noSeconds / 3600
}

/* Shell for running commands directly, used from Aftermath
 https://github.com/jamf/aftermath/blob/main/aftermath/Aftermath.swift
 */

func shell(_ command: String) -> String {
    let task = Process()
    let pipe = Pipe()
    
    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-c", command]
    task.launchPath = "/bin/bash"
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!
    
    return output
}

func addTextToFile(atUrl: URL, text: String) {
    if (!FileManager.default.fileExists(atPath: atUrl.relativePath)) {
        //let _ = createNewCaseFile(dirURL: atUrl.deletingLastPathComponent(), filename: atUrl.lastPathComponent)
    }
    
    let textWithNewLine = "\(text)\n"
    do {
        let fileHandle = try FileHandle(forWritingTo: atUrl)
            fileHandle.seekToEndOfFile()
            fileHandle.write(textWithNewLine.data(using: .utf8)!)
            fileHandle.closeFile()
    } catch {
        print("Error writing to file \(error)")
    }
}
