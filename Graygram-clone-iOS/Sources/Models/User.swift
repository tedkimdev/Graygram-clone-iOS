//
//  User.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import ObjectMapper

struct User: Mappable {
  
  var id: Int!
  var username: String!
  var photoID: String?
  
  init?(map: Map) {
  }
  
  mutating func mapping(map: Map) {
    self.id <- map["id"]
    self.username <- map["username"]
    self.photoID <- map["photo.id"]
  }
  
}
