//
//  AirlyPopoverApp.swift
//  AirlyPopover
//

import SwiftUI

@main
struct AirlyPopoverApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}
