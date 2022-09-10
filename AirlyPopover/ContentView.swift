//
//  ContentView.swift
//  AirlyPopover
//
//  Created by Jan Michalak on 06/02/2022.
//

import EventKit
import SwiftUI

struct ContentView: View {
    @State private var airlyId: String = UserDefaults.standard.string(forKey: "airlyId") ?? ""
    
    var body: some View {
        TextField("Airly Id", text: $airlyId).onChange(of: airlyId, perform: { newValue in
            UserDefaults.standard.set(newValue, forKey: "airlyId")
        })
        Informations(airlyId: airlyId)
    }
 }
