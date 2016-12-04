//
//  ViewController.swift
//  FinalProject
//
//  Created by Alvin on 11/26/16.
//  Copyright © 2016 The Austin Space. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBAction func LikeButton(_ sender: UIButton) {
        
    }
    
    @IBOutlet var homeFeedTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        homeFeedTableView.delegate = self
        homeFeedTableView.dataSource = self
        
        Alamofire.request("https://pixabay.com/api/?key=3857704-64fe6a2226221f04e00a1e06a&q={earth}&image_type=photo", method: .get).responseJSON {
            responce in
            print(responce.result.value!)
        
            
        }
//        Alamofire.request("http://api.openweathermap.org/data/2.5/weather?q=nyc&APPID=37f84f1e00eb2f706866e32e5fc3dbce", method: .get).responseJSON { response in
//            print(response.result.value!)
//            //Print my origin IP address
//            let responseDictonary = response.result.value as! Dictionary<String, Any>
//            let maiDic = responseDictonary["main"] as! Dictionary<String, Any>
//            print(maiDic["temp"]!)
//            print(self.convertKToF(kelvins: Float(maiDic["temp"]! as! Float)))
//        }
//    }
//
//    func convertKToF(kelvins: Float) -> Float {
//        let celcius = kelvins - 273
//        let faren = (celcius * (9/5)) + 32
//        return faren
//        
//        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell") as! FPHomeFeedTableViewCell
        cell.userNameLabel.text = "Some"
        return cell
    }
}

