//
//  GuideProfileView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/30.
//

import SwiftUI

struct GuideProfileView: View {
    let profileElements = ["Name", "Region", "Language", "Age"]
    let profileEleContents = ["Alex", "Seoul Dobongu", "English & Japanese", "18"]
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                // MARK: - ProfileImage
                HStack(alignment: .center) {
                    Spacer()
                    Image("profile")
                        .resizable()
                        .frame(width: 180, height: 180)
                        .scaledToFill()
                        .padding(.top,24)
                        .overlay(alignment: .bottomTrailing) {
                            Image("koreaFlag")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .overlay(RoundedRectangle(cornerRadius: 20
                                                         )
                                    .stroke(.black.opacity(0.4), lineWidth: 0.5))
                                .offset(x: 20, y: 10)
                            
                        }
                    Spacer()
                }
                .padding(.bottom, 5)
                Form {
                    // MARK: - Profile
                    Section {
                        NavigationLink {
                            ProfileEditView()
                        } label: {
                            VStack(alignment: .leading, spacing: 5) {
                                ForEach(0 ..< 4) { i in
                                    HStack {
                                        Text(profileElements[i])
                                            .fontWeight(.semibold)
                                        Text(profileEleContents[i])
                                        Spacer()
                                    }
                                }
                            }
                            .font(.system(size: 14))
                            
                        }
                        .foregroundColor(.black)

                    }
                header: {
                    Text("Profile")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.leading, -16)
                        .foregroundColor(.black)
                }
                .onTapGesture {
                    // Move To ProfileEditView
                }
                    
                   

                    
                    // MARK: - Introduce
                    Section {
                        NavigationLink {
                            IntroduceEditView()
                        } label: {
                        VStack(alignment: .leading, spacing: 5) {
                            HStack {
                                Text("Hi my name is Alex I lived in Seoul dobongu.Hi my name is Alex I lived in Seoul dobongu.")
                                    .fixedSize(horizontal: false, vertical: true) // 이해 안감
                                Spacer()
                            }
                            Text("\n")
                            HStack {
                                Text("#NightView #Dobongu #Landscape")
                                    .opacity(0.6)
                                Spacer()
                            }
                        }
                        .font(.system(size: 14))
                    }
                    }
                header: {
                    Text("Introduce")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.leading, -16)
                        .foregroundColor(.black)
                    
                }
                .onTapGesture {
                    // Move To IntroduceEditView
                }
                    
                    // MARK: - Meeting Place
                    Section {
                        NavigationLink {
                            PlaceEditView()
                        } label: {
                        VStack(alignment: .leading, spacing: 5) {
                            HStack {
                                Text("Dobongu station 1st")
                                    .fixedSize(horizontal: false, vertical: true) // 이해 안감
                                Spacer()
                            }
                        }
                        .font(.system(size: 14))
                    }
                    }
                header: {
                    Text("Meeting Place")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.leading, -16)
                        .foregroundColor(.black)
                    
                    }
                .onTapGesture {
                    // Move To PlaceEditView
                }
                }
                
                Spacer()
            }
        }
        .background(Color.backgroundGray)
        .navigationTitle("GUIDE INFO")
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarRole(.editor)
    }
}

struct GuideProfileView_Previews: PreviewProvider {
    static var previews: some View {
        GuideProfileView()
    }
}
