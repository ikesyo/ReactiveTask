import PackageDescription

let package = Package(
    name: "ReactiveTask",
    dependencies: {
        #if os(macOS)
            return [
                .Package(url: "https://github.com/ReactiveCocoa/ReactiveSwift", "1.0.0-alpha.3"),
            ]
        #else
            return [
                .Package(url: "https://github.com/ReactiveCocoa/ReactiveSwift", "1.0.0-alpha.3"),
                .Package(url: "https://github.com/Quick/Nimble", majorVersion: 5, minor: 1),
                .Package(url: "https://github.com/Quick/Quick", majorVersion: 1),
            ]
        #endif
    }()
)
