import Foundation

@_exported import AppoxeeInappWrapper

public enum MappInappResources {
    public static func configure() {
        AppoxeeInapp.configure(withResourceBundle: Bundle.module)
    }
}
