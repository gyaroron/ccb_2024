//
//  PostView.swift
//  CCB_USG_2024
//
//  Created by 양재현 on 8/7/24.
//

import SwiftUI

struct PostView: View {
    // @State로 posts를 관리
    @State private var posts: [Post] = []
    
    var body: some View {
        ScrollView(){
            VStack(){
                ForEach(posts, id: \.id) { post in
                    HStack(alignment: .top){
                        Image(post.userImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .overlay(Circle().stroke())
                            .frame(width: 50, height: 50)
                        
                        VStack(alignment : .leading){
                            Text(post.userName)
                                .bold()
                            Text(post.userId)
                            Text(post.title)
                                .bold()
                            Text(post.tag)
                            Image(post.postImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .overlay(Rectangle().stroke())
                                .frame(width: 200)
                            
                            HStack(){
                                Image(systemName :
                                        "heart")
                                Text("\(post.heart)")
                            }
                        }
                        Spacer()
                        
                    }
                    
                }.padding()
                
            }}.onAppear {
                posts = PostManager.shared.getPostMock()
            }
    }
}
#Preview {
    PostView()
}
