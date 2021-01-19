//
//  SmallVerticalButton.swift
//  netflixClone
//
//  Created by Maksym on 13.01.2021.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String

    var isOnImage: String
    var isOffImage: String

    var isOn: Bool

    var imageName: String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
    }
    
    
    
    
    
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                    .padding(0.1)
                
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system( size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SmallVerticalButton(text: "My List",
                                isOnImage: "checkmark",
                                isOffImage: "plus",
                                isOn: false) {
                print("Tapped")
            }
            
        }
    }
}
