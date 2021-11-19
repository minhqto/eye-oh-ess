import UIKit
import CoreLocation

//this class forward geo codes, so it takes a human address and translate into latitude and longitude

class ForwardGeoVC: UIViewController {
    
    @IBOutlet weak var tfCountry: UITextField!
    @IBOutlet weak var tfCity: UITextField!
    @IBOutlet weak var tfStreet: UITextField!
    @IBOutlet weak var lblLocation: UILabel!
    
    let geocoder: CLGeocoder = CLGeocoder()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onFetchCoordinateClicked(_ sender: Any) {
        guard let country = tfCountry.text else {return}
        guard let city = tfCity.text else {return}
        guard let street = tfStreet.text else {return}
        
        
        print("\(country), \(city), \(street)")
        
        self.getLocation(address: "\(country), \(city), \(street)")
    }
    
    private func getLocation(address : String){
        //to forward geo code, we have to actually make a network request to Apple's geocoding server
        self.geocoder.geocodeAddressString((address), completionHandler: {
            (result, error) -> Void in
            print("waiting for response")
            
            if let err = error {
                self.lblLocation.text = err.localizedDescription
                return
            }
            
            if let resultsList = result {
                if(resultsList.count != 0) {
                    let placemark: CLPlacemark = resultsList.first!
                    self.lblLocation.text = " \(placemark.location!.coordinate.latitude) \(placemark.location!.coordinate.longitude)"
                }
            } else{
                self.lblLocation.text = "No location found!"
            }
        })
        
      
    }
    
 
}
