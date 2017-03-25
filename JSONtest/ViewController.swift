//
//  ViewController.swift
//  JSONtest
//
//  Created by 三城聖 on 2017/03/25.
//  Copyright © 2017年 三城聖. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //load Data
        let urlll = NSURL(string: "path to json file")
        let request = NSURLRequest(url: urlll!)
        do {
            let resData: NSData = try NSURLConnection.sendSynchronousRequest(request, returningResponse: nil)
            
            let ansData = NSString(data:resData, encoding: NSUTF8StringEncoding) as! String
            
            let ansJson = JSON.parse(ansData)
            
            let postdata = ansJson["Post"]
            
            print(postdate)
            
        } catch{
            
            print("error")
            
        }

        //まず初期化
        let json = JSON(data: data)
        if let dd = json["Items"].string {
            println(dd)
        }
        
        //型：辞書
        let item = json["item"].stringValue
        //型：配列
        let item2 = json["item"].stringValue
        
        //ループ：辞書
        let jsonDictionary = JSON(data: data)
        for (key: String, subJson: JSON) in jsonDictionary["item"] {
            println(key)
            println(subJson)
        }
        
        //ループ：配列
        let jsonArray = JSON(data: data)
        for (index: String, subJson: JSON) in jsonArray["item2"] {
            println(index)
            println(subJson)
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

