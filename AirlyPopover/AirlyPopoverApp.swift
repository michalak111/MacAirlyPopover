//
//  WhatsNextApp.swift
//  AirlyPopover
//
//  Created by Jan Michalak on 06/02/2022.
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
