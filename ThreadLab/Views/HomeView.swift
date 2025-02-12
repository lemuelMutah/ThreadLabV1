//
//  HomeView.swift
//  ThreadLab
//
//  Created by Lemuel Mutah on 2/11/25.
//

import SwiftUI

struct HomeView: View {
    @State private var createPostButtonClickedVar = false  // State to track button status
    @State private var searchButtonClickedVar = false  // State to track button status
    @State private var homeButtonClickedVar = true  // State to track button status
    @State private var wardrobeButtonClickedVar = false  // State to track button status
    @State private var userButtonClickedVar = false  // State to track button status

    var body: some View {
        VStack(alignment: .center){
            HStack(spacing: 20) {
                Button(action: {}) {
                    Text("Colaborators")
                }
                Button(action: {}) {
                    Text("Timeline")
                }
                Button(action: {}) {
                    Text("Communities")
                }
            }
            .padding(10)
            
            VStack {
                Rectangle().frame(width: 410, height: 690)
            }
            
            HStack(spacing: 40) {
                Button(action: {
                    createPostButtonClicked()
                        }) {
                            Image(systemName: createPostButtonClickedVar ? "tshirt.fill" : "tshirt") // Change image
                                .resizable()
                                .frame(width: 35, height: 30)
                                .foregroundColor(createPostButtonClickedVar ? .red : .blue)
                                .animation(.easeInOut, value: createPostButtonClickedVar)
                        }
                Button(action: {
                    searchButtonClicked()
                }) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(searchButtonClickedVar ? .red : .blue)
                        .animation(.easeInOut, value: searchButtonClickedVar)
                }
                Button(action: {
                    homeButtonClicked()
                }) {
                    Image(systemName: homeButtonClickedVar ? "house.fill" :"house")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(homeButtonClickedVar ? .red : .blue)
                        .animation(.easeInOut, value: homeButtonClickedVar)
                }
                Button(action: {
                    wardrobeButtonClicked()
                }) {
                    Image(systemName: wardrobeButtonClickedVar ? "books.vertical.fill" : "books.vertical")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(wardrobeButtonClickedVar ? .red : .blue)
                        .animation(.easeInOut, value: wardrobeButtonClickedVar)
                }
                Button(action: {
                    userButtonClicked()
                }) {
                    Image(systemName: userButtonClickedVar ? "person.fill" :"person")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(userButtonClickedVar ? .red : .blue)
                        .animation(.easeInOut, value: userButtonClickedVar)
                }
            }
            .padding(10)
        }
        .padding()
    }
    
    func createPostButtonClicked() {
        createPostButtonClickedVar = true
        searchButtonClickedVar = false
        homeButtonClickedVar = false
        wardrobeButtonClickedVar = false
        userButtonClickedVar = false
    }

    func searchButtonClicked() {
        createPostButtonClickedVar = false
        searchButtonClickedVar = true
        homeButtonClickedVar = false
        wardrobeButtonClickedVar = false
        userButtonClickedVar = false
    }

    func homeButtonClicked() {
        createPostButtonClickedVar = false
        searchButtonClickedVar = false
        homeButtonClickedVar = true
        wardrobeButtonClickedVar = false
        userButtonClickedVar = false
    }

    func wardrobeButtonClicked() {
        createPostButtonClickedVar = false
        searchButtonClickedVar = false
        homeButtonClickedVar = false
        wardrobeButtonClickedVar = true
        userButtonClickedVar = false
    }

    func userButtonClicked() {
        createPostButtonClickedVar = false
        searchButtonClickedVar = false
        homeButtonClickedVar = false
        wardrobeButtonClickedVar = false
        userButtonClickedVar = true
    }
}

#Preview {
    HomeView()
        .environment(\.font, .custom("futura", size: 20))
}


