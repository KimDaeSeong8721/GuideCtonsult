//
//  ProfileEditView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/30.
//

import SwiftUI

struct ProfileEditView: View {
    @State var name = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
            
            TextField("Country", text: $name)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
            
            TextField("Language", text: $name)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
            
            TextField("Sex", text: $name)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
            
            TextField("Age", text: $name)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top)
        .toolbar {
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Save")
            }
        }
    }
}

struct ProfileEditView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditView()
    }
}
