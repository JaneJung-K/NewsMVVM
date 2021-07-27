//
//  Article.swift
//  GoodNews
//
//  Created by Mingeun Yang on 2021/07/27.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String?
    let description: String?
}
