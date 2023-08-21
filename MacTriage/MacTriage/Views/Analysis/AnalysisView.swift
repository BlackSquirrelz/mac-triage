//
//  AnalysisView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 21.08.23.
//

import SwiftUI

struct AnalysisView: View {
    var body: some View {
        TabView {
            SystemInformationView()
                .badge(2)
                .tabItem{
                    Label("System Information", systemImage: "")
                }
            FileAnalysisView()
                .badge(2)
                .tabItem{
                    Label("File Analysis", systemImage: "")
                }
            IdentifierAnalysisView()
                .badge(2)
                .tabItem{
                    Label("Identifier Analysis", systemImage: "")
                }
            MessageAnalysisView()
                .badge(2)
                .tabItem{
                    Label("Message Analysis", systemImage: "")
                }
            NetworkAnalysisView()
                .badge(2)
                .tabItem{
                    Label("Network Analysis", systemImage: "")
                }
            PlatformMonitoringView()
                .badge(2)
                .tabItem{
                    Label("Platform Monitoring", systemImage: "")
                }
            ProcessAnalysisView()
                .badge(2)
                .tabItem{
                    Label("Process Analysis", systemImage: "")
                }
            UserBehaviourAnalysisView()
                .badge(2)
                .tabItem{
                    Label("User Behavior", systemImage: "")
                }
        }
    }
}

struct AnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        AnalysisView()
    }
}
