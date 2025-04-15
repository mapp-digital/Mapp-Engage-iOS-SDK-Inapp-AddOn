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
        let bashPath = Path("/bin/bash")
        
        // Full path to the resource bundle inside the package
        let bundlePath = context.package.directory.appending("SDK/AppoxeeInappResources.bundle")

        
        return [
            .prebuildCommand(
                displayName: "Running post-install script",
                executable: bashPath,
                arguments: [scriptPath.string,
                            bundlePath.string // passed as $1 to the script
                           ],
                outputFilesDirectory: context.pluginWorkDirectory
            )
        ]
    }
}
