//
//  MapViewController.swift
//  CaseWesternQuest
//
//  Created by Samantha Frankum on 4/9/19.
//  Copyright © 2019 Samantha Frankum. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var mapView: MKMapView!
   // @IBOutlet weak var heartsLabel: UILabel!
    
    // MARK: - Properties
    var tileRenderer: MKTileOverlayRenderer!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.774669555422349, longitude: -73.964170794293238),
                                               span: MKCoordinateSpan(latitudeDelta: 0.16405544070813249, longitudeDelta: 0.1232528799585566))
        mapView.region = initialRegion
        mapView.showsUserLocation = true
        mapView.showsCompass = true
        mapView.setUserTrackingMode(.followWithHeading, animated: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "shop",
            let shopController = segue.destination as? ShopViewController,
            let store = sender as? Store {
            shopController.shop = store
        }
    }
}

