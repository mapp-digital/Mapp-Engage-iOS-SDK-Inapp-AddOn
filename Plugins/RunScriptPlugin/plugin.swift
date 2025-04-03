//
//  File.swift
//  Mapp-Engage-iOS-SDK-Inapp-AddOn
//
//  Created by Stefan Stevanovic on 3.4.25..
//

import PackagePlugin

@main
struct RunScriptPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) throws -> [Command] {
        let scriptPath = context.package.directory.appending("Scripts/post_install.sh")
        
        return [
            .prebuildCommand(
                displayName: "Running post-install script",
                executable: "/bin/bash",
                arguments: [scriptPath.string],
                outputFilesDirectory: context.pluginWorkDirectory
            )
        ]
    }
}
