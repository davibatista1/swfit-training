//
//  RegisterView.swift
//  myiOSApp
//
//  Created by Davi Batista on 17/04/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    
    var body: some View {
        
        NavigationView{
            VStack {
                HStack{
                    Spacer()
                    Text("Register Form")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                Form {
                    Section() {
                        TextField("First name", text: $firstName)
                        TextField("Last name", text: $lastName)
                        TextField("Email", text: $email)
                        SecureField("Password", text: $password)
                        SecureField("Confirm Password", text: $confirmPassword)
                    }
                    Section{
                        Button(action: {
                            print("Try to Login ")
                        }){
                            HStack{
                                Spacer()
                                Text("Register")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.orange)
                                Spacer()
                            }
                        }
                    }
                }
                .foregroundColor(Color.blue)
                .background(Color.yellow)
                
                NavigationLink(
                    destination: LoginView(),
                    label: {
                        Text("Go to Login")
                    })
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    RegisterView()
}
