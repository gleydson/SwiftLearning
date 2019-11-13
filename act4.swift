//
//  ViewController.swift
//  ATv1
//
//  Created by Ios on 12/11/19.
//  Copyright © 2019 Ios. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let urlSession = URLSession.shared
    let url = URL(string: "https://ios-twitter.herokuapp.com/api/v2/message")!
    let locationManager = CLLocationManager();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        requestLocation()
    }
    
    func post(text: String, lat: Double, lng: Double) {
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        
        let params: [String : Any] = ["text": text, "latitude": lat, "longitude": lng ]
        
        let data = try? JSONSerialization.data(withJSONObject: params, options: .prettyPrinted)
        
        urlRequest.httpBody = data
        
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        let task = urlSession.dataTask(with: urlRequest) { (data, response, error) in
            let response = (response as! HTTPURLResponse)
            if (response.statusCode == 200) {
                print("Deu certo")
            }
        }
        
        task.resume()
    }
    
    func requestLocation() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager,  didUpdateLocations locations: [CLLocation]) {
        guard let position: CLLocationCoordinate2D = locationManager.location?.coordinate else { return }
        post(text: "gleydson" , lat: position.latitude, lng: position.longitude)
    }


}
