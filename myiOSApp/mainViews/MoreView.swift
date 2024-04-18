//
//  MoreView.swift
//  myiOSApp
//
//  Created by Davi Batista on 17/04/24.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        
        VStack {
            Text("More View")
        
            Image("IMG_0126")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 400)
                .foregroundColor(.white)
                .padding(0)
                .background(Color.green)
                .clipShape(Circle())

                
            List {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
        }
    }
}

#Preview {
    MoreView()
}
