//
//  SignUpViewModel.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 10/04/22.
//

import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var uiState: SignUpUIState = .none
    
    func signUp() {
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3)  {
            //self.uiState = .error("Usuario ja existe")
            self.uiState = .goToHomeScreen 
    }
    }
    
}

extension SignUpViewModel {
    func homeView() -> some View {
        return SignUpViewRouter.makeHomeView()
    }
} 
