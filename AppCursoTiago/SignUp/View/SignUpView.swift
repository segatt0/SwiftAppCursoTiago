//
//  SignUpView.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 04/04/22.
//

import SwiftUI



struct SignUpView: View {
    
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    @State var document = ""
    @State var phone = ""
    @State var birthday = ""
    @State var gender = Gender.Male
    
    @ObservedObject var viewModel: SignUpViewModel
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .center) {
                    //alignment: .leading, spacing: 8 
                    VStack() {
                        
                        Text("Cadastro")
                            .foregroundColor(.blue)
                            .font(Font.system(.title).bold())
                            .padding(.bottom, 8)
                        
                        fullNameField
                        emailField
                        passwordField
                        documentField
                        phoneField
                        birthdayField
                        genderField
                        saveButton
                        
                        
                        
                        
                        //Spacer()
                        
                    }.padding(.horizontal, 8)
                }.padding()
                if case SignUpUIState.error(let value) = viewModel.uiState {
                    Text("")
                        .alert(isPresented: .constant(true)) {
                            Alert(title: Text("Habit"), message: Text(value), dismissButton: .default(Text("OK")) {
                                
                            })
                        }
                    
                }
            }
        }
        
    }
}


extension SignUpView {
    var fullNameField: some View {
        TextField("", text: $fullName)
            .border(Color.black)
    }
}

extension SignUpView {
    var emailField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}

extension SignUpView {
    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.black)
    }


}



extension SignUpView {
    var documentField: some View {
        TextField("", text: $document)
            .border(Color.black)
    }
}

extension SignUpView {
    var phoneField: some View {
        TextField("", text: $phone)
            .border(Color.black)
    }
}

extension SignUpView {
    var genderField: some View {
        Picker("Gender", selection: $gender) {
            
            ForEach(Gender.allCases, id: \.self) {
                value in
                Text(value.rawValue)
                    .tag(value)
            }
        }.pickerStyle(SegmentedPickerStyle())
            .padding(.top, 16)
            .padding(.bottom, 16)
    }
}

extension SignUpView {
    var birthdayField: some View {
        TextField("", text: $birthday)
            .border(Color.black)
    }
}

extension SignUpView {
    var saveButton: some View {
         Button("Realize seu cadastro") {
             viewModel.signUp()
         }
        

    }
}











struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(viewModel: SignUpViewModel())
    }
}

//struct SignUpView_Previews_DarkTheme: PreviewProvider {
//    static var previews: some View {
//        SignUpView(viewModel: SignUpViewModel())
//            .background(Color(.systemBackground))
//            .environment(\.colorScheme, .dark)
//
//    }
//}
