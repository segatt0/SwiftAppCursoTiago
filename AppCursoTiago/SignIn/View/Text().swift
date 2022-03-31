//
//  SignIn.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 15/03/22.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    @State var email = " "
    @State var password = " "
    
    @State var navigationHidden = true
    
    @State var action: Int? = 0
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: true) {
                VStack(alignment: .center, spacing: 20) {
                 Spacer(minLength: 36)
                    
            VStack(alignment: .center) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 48)
//                    .background(Color.red)
                
                Text("Login")
                    .foregroundColor(.orange)
                    .font(Font.system(.title).bold())
                    .padding(.bottom, 8)
//                    .background(Color.green)
                
                numberField
                passwordField
                enterButton
                registerLink
            }
                }
                  
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 32)
                .background(Color.white)
                .navigationBarTitle("login", displayMode: .inline)
                .navigationBarHidden(navigationHidden)
            
        }
       
    }
}

extension SignInView {
    var numberField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}



extension SignInView {
    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.black)
    }
}

extension SignInView {
    var enterButton: some View {
        Button("Entrar"){
            
        }
//        .background(Color.purple) // i am putting aleatory colors because i want to see the size of view
    }
}

extension SignInView {
    var registerLink: some View {
        VStack{
            Text("Ainda nao tem conta?")
                .foregroundColor(.gray)
                .padding(.top, 48)
            
            
            
            ZStack {
                NavigationLink(
                    destination: Text("tela de cadastro"), tag: 1, selection: $action, label: {EmptyView()})
                
                Button("Realize seu cadastro") {
                    self.action = 1 }
                
                
            }
            }
        
            
        
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
let viewModel = SignInViewModel()
        SignInView(viewModel: viewModel)
    }
}



