//
//  ContentView.swift
//  learnwithromain
//
//  Created by Romain BRUNIE on 01/02/2024.
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct ChildFeature {
    @ObservableState
    struct State {}
    
    enum Action {
        case buttonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .buttonTapped:
                return .none
            }
        }
    }
}

struct ChildView: View {
    let store: StoreOf<ChildFeature>
    
    var body: some View {
        VStack {
            Text("ChildView")
            Button("Button") {
                store.send(.buttonTapped)
            }
        }
    }
}

#Preview {
    ChildView(store: .init(
        initialState: .init(),
        reducer: {
            ChildFeature()
        }))
}
