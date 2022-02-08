//
//  AppDelegate.swift
//  Airly desktop
//

import Foundation
import AppKit
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem?
    var popover = NSPopover()
    var contentView = ContentView()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem?.button?.image = NSImage(named: "logo")
        statusItem?.button?.target = self
        statusItem?.button?.action = #selector(togglePopover)

        // Monitor mouse down
        NSEvent.addGlobalMonitorForEvents(matching: [.leftMouseDown, .rightMouseDown]) { [weak self] event in
            guard let self = self else { return }
            if self.popover.isShown {
                self.hidePopover(event)
            }
        }
    }

    func showPopover() {
        guard let statusBarButton = statusItem?.button else { return }
        
        popover.contentViewController = NSHostingController(rootView: contentView)
        popover.contentSize = NSSize(width: 300, height: 148)
        
        popover.show(relativeTo: statusBarButton.bounds, of: statusBarButton, preferredEdge: .maxY)
    }

    func hidePopover(_ sender: Any) {
        popover.performClose(sender)
        popover.contentViewController = nil
    }

    @objc func togglePopover(_ sender: Any) {
        if popover.isShown {
            hidePopover(sender)
        } else {
            showPopover()
        }
    }
}
