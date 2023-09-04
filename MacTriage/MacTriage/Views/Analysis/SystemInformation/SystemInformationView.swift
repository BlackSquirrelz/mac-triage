//
//  SystemInformationView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 21.08.23.
//

import SwiftUI

let hostname = ProcessInfo.processInfo.hostName
let userName = ProcessInfo.processInfo.userName
let fullName = ProcessInfo.processInfo.fullUserName
let systemVersion = ProcessInfo.processInfo.operatingSystemVersionString
var physicalMemory = ProcessInfo.processInfo.physicalMemory // Amount of Physical Memory in Bytes
let lowPowerModeEnable = ProcessInfo.processInfo.isLowPowerModeEnabled
var systemUpTime = ProcessInfo.processInfo.systemUptime
let command = "/usr/bin/sudo defaults read /Library/Preferences/com.apple.SoftwareUpdate"

struct SystemInformationView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Hostname: \(hostname)")
            Text("Username: \(userName)")
            Text("Full Name: \(fullName)")
            Text("System Version: \(systemVersion)")
            Text("Physical Memory: \(convertBytesToGb(noBytes: physicalMemory))")
            //Text("Low Power Mode: \(lowPowerModeEnable)")
            Text("System Uptime: \(convertTimeIntervalToHours(noSeconds: systemUpTime))")
            Text("Quarantine Files:\n\(getQuarantineFiles())")
        }
    }
}

struct SystemInformationView_Previews: PreviewProvider {
    static var previews: some View {
        SystemInformationView()
    }
}
