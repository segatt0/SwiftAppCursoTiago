//
//  SignInViewModel.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 15/03/22.
//

import SwiftUI

class SignInViewModel: ObservableObject {
    
    @Published var uiState: SignInUIState = .none
    
    func login(email: String, password: String) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3)  {
            self.uiState = .goToHomeScreen
    }
}
}
