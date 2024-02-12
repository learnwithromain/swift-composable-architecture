import ComposableArchitecture
import SwiftUI

@Reducer
struct ParentFeature {
    @ObservableState
    struct State {
        var child: ChildFeature.State
    }
    
    enum Action {
        case child(ChildFeature.Action)
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: \.child, action: \.child) {
            ChildFeature()
        }
        
        Reduce { state, action in
            switch action {
            case .child(.buttonTapped):
                return .none
            }
        }
        ._printChanges()
    }
}

struct ParentView: View {
    let store: StoreOf<ParentFeature>
    
    var body: some View {
        VStack {
            ChildView(store: store.scope(
                state: \.child,
                action: \.child
            ))
        }
    }
}

