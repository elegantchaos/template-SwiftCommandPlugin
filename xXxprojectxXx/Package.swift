// swift-tools-version:5.7

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by xXxuserxXx on xXxdatexXx.
//  All code (c) xXxyearxXx - present day, xXxownerxXx.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import PackageDescription

let package = Package(
    name: "xXxprojectxXx",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .plugin(
            name: "xXxprojectxXxPlugin",
            targets: [
                "xXxprojectxXxPlugin"
            ]
        ),
    ],
    
    dependencies: [
    ],
    
    targets: [
        .plugin(
            name: "xXxprojectxXxPlugin",
            
            capability: .command(intent: .custom(verb: "command", description: "command description")),
            
            dependencies: [
                "xXxprojectxXxTool"
            ]
        ),
        
        .executableTarget(
            name: "xXxprojectxXxTestsTool",
            dependencies: [
                ]
        ),
    ]
)
