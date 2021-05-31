//
//  SignUpView.swift
//  ParkFinder
//
//  Created by Leonard Box on 5/24/21.
//

import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    @State private var profileImage: Image?
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var showActionSheet = false
    @State private var showImagePicker = false
    @State private var pickedImage: Image?
    @State private var imageData: Data = Data()
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    func loadImage() {
        guard let inputImage = pickedImage
        else {
            return
        }
        profileImage = inputImage
    }
    
    var body: some View {
        ScrollView {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            VStack {
                if profileImage != nil {
                    profileImage!.resizable()
                        .clipShape(Circle())
                        .frame(width: 150, height: 150)
                        .padding(.top, 20)
                        .onTapGesture {
                            self.showActionSheet = true
                        }
                } else {
                    Image(systemName: "contacts.unfill")
                        .imageScale(.large)
                        .clipShape(Circle())
                        .frame(width: 300, height: 300)
                        .padding(.top, 20)
                        .onTapGesture {
                            self.showActionSheet = true
                        }
                }
            }
            
            VStack {
                TextField("Username", text: $username)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                
                TextField("Email Address", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                
                SecureField("Password", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                
                Button(action: {
                    guard !email.isEmpty, !password.isEmpty else {
                        return
                    }
                    viewModel.signUp(email: email, password: password)
                }, label: {
                    Text("Create Account")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .cornerRadius(8)
                        .background(Color.green)
                })
                HStack {
                    Text("New user?")
                    NavigationLink("Sign In", destination: SignInView())
                        .padding()
                        .foregroundColor(.black)
                }
            }
            .padding()
            Spacer()
        }
        .sheet(isPresented: $showImagePicker, onDismiss:loadImage) {
            ImagePicker(pickedImage: self.$pickedImage, showImagePicker: self.$showImagePicker, imageData: self.$imageData)
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text(""), buttons: [
                .default(Text("Chose a photo")) {
                    self.sourceType = .photoLibrary
                    self.showImagePicker = true
                },
                .default(Text("Take a photo")) {
                    self.sourceType = .camera
                    self.showImagePicker = true
                },
                .cancel()
            ])
        }
        Spacer()
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
