//
//  LoginView.swift
//  myiOSApp
//
//  Created by Davi Batista on 15/04/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    @State var goToMain: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                NavigationLink(destination: MainView(), isActive: $goToMain, label: {EmptyView()})
                
                HStack{
                    Spacer()
                    Text("Login Form")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                VStack {
                    Form {
                        Section() {
                            TextField("Email", text: $email)
                            SecureField("Password", text: $password)
                        }
                        Section{
                            Button(action: {
                                self.goToMain = true
                            }){
                                HStack{
                                    Spacer()
                                    Text("Login")
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(Color.orange)
                                    Spacer()
                                }
                            }
                        }
                    }
                    .foregroundColor(Color.blue)
                    .background(Color.yellow)
                }
                NavigationLink(
                destination: RegisterView(),
                label: {
                    Text("Register")
                })
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginView()
}
