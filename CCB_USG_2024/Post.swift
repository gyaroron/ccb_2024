import Foundation

struct Post: Codable { 
    var id : Int
    var userId: String
    var userName: String
    var userImage : String
    var title: String
    var tag: String
    var postImage : String
    var heart: Int
}
