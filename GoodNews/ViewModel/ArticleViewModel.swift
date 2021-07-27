//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Mingeun Yang on 2021/07/27.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

// Model은 Data 를 위한 것 ViewModel은 View를 위한 Model!!
// 테이블 뷰에 뿌려줄 것이므로 테이블뷰를 그리는 데 필요한 정보 세 가지를 여기에서 정해준다!
extension ArticleListViewModel {
    
    var numberOfSedctions: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

//struct로 만들었기 때문에 변경이 안된다. mutating 해주는 방법 중에 하나
extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}


extension ArticleViewModel {
    
    var title: String? {
        return self.article.title
    }
    
    var description: String? {
        return self.article.description
    }
    
}
