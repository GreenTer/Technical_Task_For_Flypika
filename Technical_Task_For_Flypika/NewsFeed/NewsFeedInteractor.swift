//
//  NewsFeedInteractor.swift
//  Technical_Task_For_Flypika
//
//  Created by Baravitski Aliaksandr on 27.06.21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol NewsFeedBusinessLogic {
  func makeRequest(request: NewsFeed.Model.Request.RequestType)
}

class NewsFeedInteractor: NewsFeedBusinessLogic {

  var presenter: NewsFeedPresentationLogic?
  var service: NewsFeedService?
    
    private var fetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())
  
  func makeRequest(request: NewsFeed.Model.Request.RequestType) {
    if service == nil {
      service = NewsFeedService()
    }
    
    switch request {
    case .getNewsFeed:
        fetcher.getFeed { [weak self] (feedResponse) in
            guard let feedResponse = feedResponse else { return }
            self?.presenter?.presentData(response: NewsFeed.Model.Response.ResponseType.responsePresentNewsFeed(feed: feedResponse))
        }
    }
  }
  
}
