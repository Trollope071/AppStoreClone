//
//  AppGroup.swift
//  AppStoreClone
//
//  Created by Савва Варма on 23.03.2023.
//

import Foundation

struct AppGroup: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    let artistName: String
    let name: String
    let artworkUrl100: String
    let id: String
}
