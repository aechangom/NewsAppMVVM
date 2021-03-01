//
//  WebService.swift
//  MVVMNewsApp
//
//  Created by Andres Efrain Chango Macas on 2/28/21.
//

import Foundation
class WebService{
//    declarar en closure @escaping para enviar la lista de articulos
    
    func getArticles(url:URL, completion: @escaping ([Article]?)->()){
//       implemetar la conexión usnado URLSession
        
        URLSession.shared.dataTask(with: url){ data, response, error in
           
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                let decoder = JSONDecoder()
                do{
                    let articlesList = try? decoder.decode(ArticleList.self, from: data)
                    print(articlesList)
                    completion(articlesList?.articles)
                }
                catch{
                    print(error.localizedDescription)
                    completion(nil)
                }
            }
        }.resume()
    }
}
