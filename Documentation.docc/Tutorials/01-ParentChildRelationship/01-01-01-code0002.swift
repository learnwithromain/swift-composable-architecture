import ComposableArchitecture
import SwiftUI

@Reducer
struct ParentFeature {
    @ObservableState
    struct State {}
    
    enum Action {}
    
    var body: some ReducerOf<Self> {
        EmptyReducer()
    }
}

struct ParentView: View {
    let store: StoreOf<ParentFeature>
    
    var body: some View {
        EmptyView()
    }
}

