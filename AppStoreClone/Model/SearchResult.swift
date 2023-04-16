//
//  SearchResult.swift
//  AppStoreClone
//
//  Created by Савва Варма on 22.03.2023.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results:  [Result]
}

struct Result: Decodable {
    let trackId: Int
    let trackName: String
    let primaryGenreName: String
    let averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String // app icon
    let formattedPrice: String?
    let description: String
    let releaseNotes: String?
}
