//
//  helpers.swift
//  CollectionScripts
//
//  Created by BlackSquirrelz on 13.08.23.
//

import Foundation
import AppKit

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



extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return loaded
    }
}


