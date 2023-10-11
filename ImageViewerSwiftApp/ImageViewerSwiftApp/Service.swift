//
//  Service.swift
//  ImageViewerSwiftApp
//
//  Created by Rukshi Chauhan on 10/10/23.
//

import Foundation
class Service { // singleton example
    
    private init (){} // as we dont want it to change our instance
    static var shared = Service() // single shared instance
    
    func getImage(urlString: String, completion: @escaping (Data?)->() ) {
        guard let url = URL(string: urlString) else {return}
        let myQueue = DispatchQueue(label: "MyQueue")
        myQueue.async {
            let data = try? Data(contentsOf: url)
            completion(data)
        }
    }
    
}
