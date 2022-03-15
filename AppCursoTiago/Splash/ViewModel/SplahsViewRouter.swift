//
//  SplahsViewRouter.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 15/03/22.
//

import SwiftUI

enum SplashViewRouter {
    
    static func makeSignInView() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}
