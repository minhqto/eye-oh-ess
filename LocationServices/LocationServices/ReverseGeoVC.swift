import UIKit
import CoreLocation

class ReverseGeoVC: UIViewController {
    
    @IBOutlet weak var tfLatitude: UITextField!
    @IBOutlet weak var tfLongitude: UITextField!
    @IBOutlet weak var lblAddress: UILabel!
    
    let geocoder: CLGeocoder = CLGeocoder()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onFetchAddressClicked(_ sender: Any) {
        //gets the lat and long and converts it to address
        //this guard let combo takes the text from teh text box, checks if null
        //then if not null, converts it into a double and assigns to lat
        guard let tfLatText = tfLatitude.text, let lat = Double(tfLatText) else {
            return
        }
        
        guard let tfLongText = tfLongitude.text, let long = Double(tfLongText) else {
            return
        }
        
        getAddress(userLocation: CLLocation(latitude: lat, longitude: long))
    }
    
    func getAddress(userLocation: CLLocation){
        self.geocoder.reverseGeocodeLocation(CLLocation(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)) { (resultsList, error) -> Void in
            
            if let err = error {
                self.lblAddress.text = "\(err)"
            }
            if let result = resultsList {
                if (result.isEmpty) {
                    self.lblAddress.text = "No result!"
                }else {
                    if let matchingLocation: CLPlacemark = result.first {
                        let city = matchingLocation.locality ?? "N/A"
                        let country = matchingLocation.country ?? "N/A"
                        let province = matchingLocation.administrativeArea ?? "N/A"
                        let street = matchingLocation.thoroughfare ?? "N/A"
                        
                        let address = "\(street), \(city), \(province), \(country)"
                        
                        self.lblAddress.text = address
                        
                    }
                }
            }
        }
    }
}
