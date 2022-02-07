//
//  Informations.swift
//  AirlyPopover
//
//  Created by Jan Michalak on 06/02/2022.
//

import SwiftUI
import WebKit

struct Informations: View {
    var body: some View {
        WebView()
    }
}

struct Informations_Previews: PreviewProvider {
    static var previews: some View {
        Informations()
    }
}

struct WebView: NSViewRepresentable {
    func makeNSView(context: Context) -> some NSView {
        let request = URLRequest(url: URL(string: "https://airly.org/map/widget.html#w=280&h=380&m=false&i=true&d=false&ah=true&aw=false&l=pl&it=AIRLY_CAQI&us=metric&ut=celsius&lat=50.057447&lng=19.946008&id=58")!)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        NSLog("CALLED")
        return wkWebView
            
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        NSLog("Hello, World!");
    }
}
