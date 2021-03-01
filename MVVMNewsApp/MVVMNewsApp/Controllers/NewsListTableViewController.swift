//
//  NewsListTableViewController.swift
//  MVVMNewsApp
//
//  Created by Andres Efrain Chango Macas on 2/28/21.
//

import Foundation
import UIKit

class NewsListTableViewController : UITableViewController{
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp(){
        
        let url = URL(string :"https://newsapi.org/v2/everything?q=bitcoin&from=2020-11-29&sortBy=publishedAt&apiKey=863e9d0d7a694c09ab459d6688e7e7ec")!
        
        WebService().getArticles(url: url){ data in
            
        
            
            
        }
    
       
    }
}
