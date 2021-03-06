//
//  NewsFeedModels.swift
//  Technical_Task_For_Flypika
//
//  Created by Baravitski Aliaksandr on 27.06.21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum NewsFeed {
   
  enum Model {
    struct Request {
      enum RequestType {
        case getNewsFeed
      }
    }
    
    struct Response {
      enum ResponseType {
        case responsePresentNewsFeed(feed: FeedResponse)
      }
    }
    
    struct ViewModel {
      enum ViewModelData {
        case displayNewsFeed(feedViewModel: FeedViewModel)
      }
    }
  }
}


struct FeedViewModel {
    struct Cell: FeedCellViewModel {
        var iconUrlString: String
        var name: String
        var date: String
        var text: String?
        var likes: String?
        var comments: String?
        var shares: String?
        var views: String?
    }
    // add massive sturct
    let cells: [Cell]
}
