//
//  ViewController.swift
//  WebServices
//
//  Created by Minh To on 2021-11-20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var companyNameLbl: UILabel!
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var primaryExchangeLbl: UILabel!
    
    private let apiService = APIService.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func fullSendButtonClicked(_ sender: Any) {
        let result = apiService.fetchData()
        //convert url string to URL object
        DispatchQueue.main.async {
            self.companyNameLbl.text = result.tickers.first?.companyName
            self.currencyLbl.text = result.tickers.first?.currency
            self.primaryExchangeLbl.text = result.tickers.first?.primaryExchange
        }
    }
    

}

