import Foundation
import PackageDescription

var isSwiftPackagerManagerTest: Bool {
    return ProcessInfo.processInfo.environment["SWIFTPM_TEST_ReactiveTask"] == "YES"
}

let package = Package(
    name: "ReactiveTask",
    dependencies: {
        var deps: [Package.Dependency] = [
            .Package(url: "https://github.com/antitypical/Result.git", versions: Version(3, 2, 1)..<Version(3, .max, .max)),
            .Package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", versions: Version(1, 1, 0)..<Version(1, .max, .max)),
        ]
        if isSwiftPackagerManagerTest {
            deps += [
                .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1, minor: 1),
                .Package(url: "https://github.com/Quick/Nimble.git", majorVersion: 6, minor: 1),
            ]
        }
        return deps
    }()
)
