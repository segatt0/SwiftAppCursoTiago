//
//  SignIn.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 15/03/22.
//

import SwiftUI

struct SignInView: View {
    @State var show = false
    
    
    @ObservedObject var viewModel: SignInViewModel
    @State var email = ""
    @State var password = ""
    
    @State var navigationHidden = true
    
    @State var action: Int? = 0
    
    var body: some View {
        ZStack {
            if case SignInUIState.goToHomeScreen = viewModel.uiState { viewModel.homeView() 
                
            } else {
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
                
                emailField
                passwordField
                enterButton
                    
                registerLink
                
                Text("Copyright @yyy")
                    .foregroundColor(Color.gray)
                    .font(Font.system(size: 16).bold())
                    .padding(.top, 200)
                
            }
                }
                
                if case SignInUIState.error(let value) = viewModel.uiState {
                    Text("")
                        .alert(isPresented: .constant(true)) {
                            Alert(title: Text("Habit"), message: Text(value), dismissButton: .default(Text("OK")) {
                                
                            })
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
    }
}

extension SignInView {
    var emailField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
        
    var passwordField: some View {
            SecureField("", text: $password)
                .border(Color.black)
            }
    
    var enterButton: some View {
        Button("entrar") {
           // self.show = !self.show }){ Text("entrar")
            viewModel.login(email:email, password:password)
//            } .padding(.top, 25)
//            .foregroundColor(self.show ? .black : .orange)
//               .background(Color.white.shadow(radius:3))
//               .onTapGesture {
//                   withAnimation(Animation.easeOut(duration: 0.4)) {
//                       self.show = !self.show
//                   }
//
        }//.foregroundColor(self.show ? .black : .orange)
            //.font(Font.system(size: self.show ? 30 : 100))
            
    }
}




//extension SignInView {
//    var passwordField: some View {
//        SecureField("", text: $password)
//            .border(Color.black)
//    }
//}

//extension SignInView {
//    var enterButton: some View {
//        Button("Entrar"){
//
//        }
////        .background(Color.purple) // i am putting aleatory colors because i want to see the size of view
//    }
//}

extension SignInView {
    var registerLink: some View {
        VStack{
            Text("Ainda nao tem conta?")
                .foregroundColor(.gray)
                .padding(.top, 48)
            
            
            
            ZStack {
                NavigationLink(
                    destination: viewModel.signUpView(), tag: 1, selection: $action, label: {EmptyView()})
                
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



