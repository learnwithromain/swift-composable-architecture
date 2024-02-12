//
//  learnwithromainApp.swift
//  learnwithromain
//
//  Created by Romain BRUNIE on 01/02/2024.
//

import SwiftUI

@main
struct learnwithromainApp: App {
    var body: some Scene {
        WindowGroup {
            ParentView(store: .init(
                initialState: ParentFeature.State(child: .init()),
                reducer: {
                    ParentFeature()
                }
            ))
        }
    }
}
