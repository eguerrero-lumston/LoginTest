//
//  AuthView.swift
//  viva-linq-app
//
//  Created by Lumston on 04/03/20.
//  Copyright © 2020 Lumston. All rights reserved.
//

import SwiftUI
import Combine

public struct AuthLogginTestView: View {
    // MARK: - Propertiers
    @Environment(\.colorScheme) var colorScheme
    @State var actionSingup = false
    @State var isLogin = false
    @AppStorage("isLogged") var isLogged = false
    @AppStorage("loggedBy") var loggedBy = ""
    
    // MARK: - View
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    HStack {
                        Spacer()
                        Image("logo-login")
                            .resizable()
                            .scaledToFit()
//                            .frame(minWidth: 100, maxWidth: UIScreen.main.bounds.width - 120)
                            .environment(\.colorScheme, .dark)
                            
                        Spacer()
                    }
                    .padding(.top, 100)
                    Spacer()
                    Button("login", action: {
                        self.isLogin = true
                        self.actionSingup.toggle()
                    })
                    Button("signup", action: {
                        self.isLogin = false
                        self.actionSingup.toggle()
                    })
                    
                    Button("login-guest", action: {
                        loggedBy = "guest"
                        isLogged = true
                    })
                        .padding(.bottom, 20)
                }
            }
            .background(
                Image("bg")
                    .resizable()
                    .scaledToFill()
//                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .edgesIgnoringSafeArea(.all)
            )
        }
    }
}

extension Color {
    static var themeTextField: Color {
        return Color.white.opacity(0.2)
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthLogginTestView()
    }
}
