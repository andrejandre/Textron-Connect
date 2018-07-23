//
//  MapViewController.swift
//  TextronConnect 3
//
//  Created by Andre Unsal on 7/12/18.
//  Copyright © 2018 Textron. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let regionRadius: CLLocationDistance = 1000
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let initialLocation = CLLocation(latitude: 32.8, longitude: -97.17)
        centerMapOnLocation(location: initialLocation)
        
        // show office locations on map
        let dallasFwOffice = OfficeLocations(title: "TIS & Bell", locationName: "DFW Facilities", discipline: "Bell Helicopter", coordinate: CLLocationCoordinate2D(latitude: 32.8, longitude: -97.17))
        mapView.addAnnotation(dallasFwOffice)
        let seattleGseOffice = OfficeLocations(title:"TUG SEA", locationName: "Textron Ground Support Equipment business unit and facilities", discipline: "ground support", coordinate: CLLocationCoordinate2D(latitude: 47.11952, longitude: -122.451))
        mapView.addAnnotation(seattleGseOffice)
        let calgaryBellOffice = OfficeLocations(title: "Bell", locationName: "Calgary, Alberta - Canada", discipline: "Helicopters and aerospace innovation", coordinate: CLLocationCoordinate2D(latitude: 51.116636, longitude: -114.02987))
        mapView.addAnnotation(calgaryBellOffice)
        let kautexPueblaOffice = OfficeLocations(title: "Kautex", locationName: "Puebla, Mexico", discipline: "Automotive", coordinate: CLLocationCoordinate2D(latitude: 19.43, longitude: -99.16))
        mapView.addAnnotation(kautexPueblaOffice)
        let kautexSilaoOffice = OfficeLocations(title: "Kautex", locationName: "Silao, Guanajuato - Mexico", discipline: "Automotive", coordinate: CLLocationCoordinate2D(latitude: 20.9436, longitude: -101.43))
        mapView.addAnnotation(kautexSilaoOffice)
        let tamMaresOffice = OfficeLocations(title: "TAM 6, 7", locationName: "Mares, Chihuahua - Mexico", discipline: "Aviation", coordinate: CLLocationCoordinate2D(latitude: 28.635, longitude: -106.089))
        mapView.addAnnotation(tamMaresOffice)
        let tamParqueOffice = OfficeLocations(title: "TAM 1, 2, 3, 4", locationName: "Parque Industrial Las Americas, Chihuahua - Mexico", discipline: "Aviation", coordinate: CLLocationCoordinate2D(latitude: 28.63528, longitude: -106.08889))
        mapView.addAnnotation(tamParqueOffice)
        let timChiOffice = OfficeLocations(title: "TIM", locationName: "Chihuahua - Mexico", discipline: "Textron Corporate", coordinate: CLLocationCoordinate2D(latitude: 19.327691, longitude: -99.82173))
        mapView.addAnnotation(timChiOffice)
        let atacKaneoheOffice = OfficeLocations(title: "ATAC", locationName: "MCBH Kaneohe Bay, Hawaii - USA", discipline: "Aviation", coordinate: CLLocationCoordinate2D(latitude: 21.448639, longitude: -157.763))
        mapView.addAnnotation(atacKaneoheOffice)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// defines object for creating annotation depicting textron locations in Map Kit
class OfficeLocations: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}
