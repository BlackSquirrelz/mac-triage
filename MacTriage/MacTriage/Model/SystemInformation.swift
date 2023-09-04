//
//  SystemInformation.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 21.08.23.
//

/*Code inspired by @Aftermath
Copyright 2022 JAMF Software, LLC
https://github.com/jamf/aftermath/blob/main/LICENSE.md
*/

import Foundation

func systemInformation(saveFile: URL){
    let hostname = ProcessInfo.processInfo.hostName
    let userName = ProcessInfo.processInfo.userName
    let fullName = ProcessInfo.processInfo.fullUserName
    let systemVersion = ProcessInfo.processInfo.operatingSystemVersionString
    var physicalMemory = ProcessInfo.processInfo.physicalMemory // Amount of Physical Memory in Bytes
    let lowPowerModeEnable = ProcessInfo.processInfo.isLowPowerModeEnabled
    var systemUpTime = ProcessInfo.processInfo.systemUptime
    
    // Do some conversions for human readability
    physicalMemory = convertBytesToGb(noBytes: physicalMemory)
    systemUpTime = convertTimeIntervalToHours(noSeconds: systemUpTime)
    
    
    addTextToFile(atUrl: saveFile, text: "## SystemInformation:\nHostname:\t\(hostname)\nUsername:\t\(userName)\nFull Name:\t\(fullName)\nOS Version:\t\(systemVersion)\nPhysical Memory:\t\(physicalMemory) GB\nLow Power Mode:\t\(lowPowerModeEnable)\nSystem Uptime:\t\(systemUpTime) hours \n---\n")
}

// Get applications with the flag 01c1 or 0181 from the Appplications Directory.
//TODO: Display these in the System information View? Tab in the Analysis View
// May or may not return any string, so this should probably be an optional string.
func getQuarantineFiles() -> String{
    let command = "xattr -l /Applications/*app | grep '(01c1|0181)"
    let result = shell(command)
    print("These are the Apps that have the 01c1 or 0181 flags:\n\(result)")
    return result
}
