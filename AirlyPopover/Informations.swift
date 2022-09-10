//
//  Informations.swift
//  AirlyPopover
//
//  Created by Jan Michalak on 06/02/2022.
//

import SwiftUI
import WebKit

struct Informations: View {
    var airlyId: String

    init(airlyId: String) {
        self.airlyId = airlyId
    }
    
    var body: some View {
        WebView(airlyId: airlyId)
    }
}

struct Informations_Previews: PreviewProvider {
    static var previews: some View {
        Informations(airlyId: "Test")
    }
}

struct WebView: NSViewRepresentable {
    var airlyId: String
    
    init(airlyId: String) {
        self.airlyId = airlyId
    }
    
    func makeNSView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        let request = URLRequest(url: URL(string: "https://airly.org/map/widget.html#w=280&h=380&m=false&i=true&d=false&ah=true&aw=false&l=pl&it=AIRLY_CAQI&us=metric&ut=celsius&id=" + airlyId)!)
        nsView.load(request)
        nsView.reload()
    }
}
