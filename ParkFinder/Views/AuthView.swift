//
//  AuthView.swift
//  ParkFinder
//
//  Created by Leonard Box on 5/24/21.
//

import SwiftUI
import FirebaseAuth

struct AuthView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
            if viewModel.signedIn {
                Text("You are signed in")
            } else {
                SignInView()
            }
        }
        .onAppear {
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
