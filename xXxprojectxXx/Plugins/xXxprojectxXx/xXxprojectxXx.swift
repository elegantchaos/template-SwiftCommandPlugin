// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by xXxuserxXx on xXxdatexXx.
//  All code (c) xXxyearxXx - present day, xXxownerxXx.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation
import PackagePlugin

@main struct xXxprojectxXx: CommandPlugin {
    func createBuildCommands(context: PackagePlugin.PluginContext, target: PackagePlugin.Target) async throws -> [PackagePlugin.Command] {
        let output = context.pluginWorkDirectory.appending("GeneratedSources").appending("Version.generated.swift")
        let infoOutput = context.pluginWorkDirectory.appending("GeneratedSources").appending("Info.plist")
        let root = context.package.directory
        
        // TODO: make this a prebuild command when they work with local (non-binary) tool targets
        // as a temporary workaround, remove the generated file to (hopefully?) force this to run every build
        let url = URL(fileURLWithPath: output.string)
        try? FileManager.default.removeItem(at: url)
        
        return [
            .buildCommand(
                displayName: "Calculating Version",
                executable: try context.tool(named: "VersionatorTool").path,
                arguments: [root, output, infoOutput],
                outputFiles: [output, infoOutput]
            )
        ]
    }
}
