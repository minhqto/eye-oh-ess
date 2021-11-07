//
//  ViewController.swift
//  TableViews
//
//  Created by Minh To on 2021-10-25.
//

import UIKit

//this VC class conforms to the UITableViewDelegate and UITableViewDataSource protocols
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var appTitleLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var resultsLbl: UILabel!
    @IBOutlet weak var movieTextInput: UITextField!
    
    var movieObjs: [Movie] = [
        Movie(mTitle: "The Hurt Locker", mGenre: "Action", rYear: "2010"),
        Movie(mTitle: "The Avengers", mGenre: "Action", rYear: "2011")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    @IBAction func movieTextField(_ sender: Any) {}
    
    @IBAction func addMovieButton(_ sender: Any) {
        let addedMovie = movieTextInput.text
        movieObjs.append(Movie(mTitle: addedMovie!, mGenre: "Comedy", rYear: "2015"))
        
        tableView.reloadData()
        resultsLbl.text = ""
    }
    
    //determintes the number of rows in the section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return movieObjs.count
    }
    
    //this function controls what data is displayed in each row of the tableView
    //grab a single cell from that table view and populate it with data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //we need to actually get the cell
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! CellTableViewCell
        
        cell.movieTitleLbl.text = movieObjs[indexPath.row].movieTitle
        cell.genreLbl.text = movieObjs[indexPath.row].movieGenre
        return cell
    }
    
    //specifies the number of items per section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCell.EditingStyle.delete) {
            movieObjs.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row selected!")
        self.resultsLbl.text = movieObjs[indexPath.row].movieTitle
    }
    
}

