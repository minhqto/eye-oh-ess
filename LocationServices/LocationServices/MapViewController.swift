import UIKit
import MapKit
// 1. import MapKit

class MapViewController: UIViewController {

    // 2. Create an outlet for your map
    @IBOutlet var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let zoomLevel = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        //hard coding for now
        let mapCentre = CLLocationCoordinate2D(latitude: 43.651070, longitude: -79.347015)

        let visibleRegion = MKCoordinateRegion(center: mapCentre, span: zoomLevel)
        
        self.map.setRegion(visibleRegion, animated: true)
    }
    
  
}
