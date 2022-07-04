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
            name: "xXxprojectxXx",
            targets: [
                "xXxprojectxXx"
            ]
        ),
    ],
    
    dependencies: [
    ],
    
    targets: [
        .plugin(
            name: "xXxprojectxXx",
            
            capability: .command(intent: .custom(verb: "command", description: "command description")),
            
            dependencies: [
                "xXxprojectxXxTool"
            ]
        ),
        
        .executableTarget(
            name: "xXxprojectxXxTool",
            dependencies: [
                ]
        ),
    ]
)
