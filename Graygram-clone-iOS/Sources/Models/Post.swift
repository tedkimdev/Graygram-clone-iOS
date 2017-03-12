//
//  Post.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import ObjectMapper

struct Post: Mappable {
  
  var id: Int!
  var user: User!
  var photoID: String!
  var message: String?
  var createdAt: Date!
  var isLiked: Bool!
  
  init?(map: Map) {
  }
  
  mutating func mapping(map: Map) {
    self.id <- map["id"]
    self.user <- map["user"]
    self.photoID <- map["photo.id"]
    self.message <- map["message"]
    self.createdAt <- (map["created_at"], ISO8601DateTransform())
    self.isLiked <- map["is_liked"]
  }
  
}
