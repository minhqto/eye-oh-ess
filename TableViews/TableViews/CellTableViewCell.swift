//
//  CellTableViewCell.swift
//  TableViews
//
//  Created by Minh To on 2021-11-04.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLbl: UILabel!
    @IBOutlet weak var genreLbl: UILabel!
    @IBOutlet weak var randomSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
