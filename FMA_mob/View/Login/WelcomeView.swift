//
//  WelcomeView.swift
//  FMA_mob
//
//  Created by Dilnaz Nauryzbayeva on 15.09.2024.
//

import SwiftUI

struct WelcomeView: View {
    @State private var selectedIndex = 0
    let totalSlides = 3
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background Image for the current slide
                
                VStack {
                    // Title and Description based on the slide
                    if selectedIndex == 0 {
                        Image("slide 1")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .offset(y: -70)
                        
                        Text("Natural and \nFresh Products")
                            .offset(y: -50)
                            .offset(x: -30)
                            .font(.customfont(.bold, fontSize: 40))
                            .foregroundColor(.black)
                        
                        Text("Straight from the Farm \nto Your Table")
                            .offset(y: -40)
                            .offset(x: -30)
                            .font(.customfont(.semibold, fontSize: 25))
                            .foregroundColor(.gray.opacity(0.7))
                        
                    } else if selectedIndex == 1 {
                        Image("slide 2")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .offset(y: -70)
                        
                        Text("Fast and Careful \nDelivery")
                            .offset(y: -50)
                            .offset(x: -10)
                            .font(.customfont(.bold, fontSize: 40))
                            .foregroundColor(.black)
                        
                        Text("Quality You can Trust, \nRight to Your Door")
                            .offset(y: -40)
                            .offset(x: -40)
                            .font(.customfont(.semibold, fontSize: 25))
                            .foregroundColor(.gray.opacity(0.7))
                        
                    } else if selectedIndex == 2 {
                        Image("slide 3")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .offset(y: -75)
                        
                        Text("Great Value, \nNo Compromise")
                            .offset(y: -50)
                            .offset(x: -20)
                            .font(.customfont(.bold, fontSize: 40))
                            .foregroundColor(.black)
                        
                        Text("Affordable Groceries, \nHassle-Free Experience")
                            .offset(y: -40)
                            .offset(x: -30)
                            .font(.customfont(.semibold, fontSize: 25))
                            .foregroundColor(.gray.opacity(0.7))
                    }
                    
                    // Button for navigating slides or the Login Page
                    if selectedIndex < totalSlides - 1 {
                        Button(action: {
                            if selectedIndex < totalSlides - 1 {
                                selectedIndex += 1
                            }
                        }) {
                            Image(systemName: "chevron.right")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60)
                                .background(Color.black)
                                .clipShape(Circle())
                        }
                        .offset(y: 0)
                        .offset(x: 135)
                        
                    } else {
                        // "Get Started" button to navigate to the Login Page
                        NavigationLink(destination: LoginView()) {
                            Text("Get Started")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black)
                                .cornerRadius(30)
                                .frame(width: 200, height: 50)
                        }
                        .offset(y: 0)
                        .offset(x: 90)
                    }
                }
            }
            .ignoresSafeArea()
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
