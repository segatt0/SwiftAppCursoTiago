//
//  SignInViewRouter.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 04/04/22.
//

import SwiftUI


enum SignInViewRouter {
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}
