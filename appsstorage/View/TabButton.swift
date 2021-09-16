//
//  TabButton.swift
//  appsstorage
//
//  Created by mac on 07/05/21.
//

import SwiftUI

struct TabButton: View {
    var title: String
    @Binding var selected: String
    
    var animation: Namespace.ID
    var body: some View {
        
        Button(action: {
            
            withAnimation(.spring()){selected = title}
        }) {
            Text(title)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .foregroundColor(selected == title ? .white : .yellow)
                .padding(.vertical,5)
                .padding(.horizontal,selected == title ? 20 : 0)
                .background(
                    
                    ZStack{
                        if selected == title {
                            
                            Color.yellow
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    }
                    
                ) }
    }
    
}
