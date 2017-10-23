//
//  ArtikelTableViewCell.swift
//  PostTest
//
//  Created by Macbook pro on 23/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class ArtikelTableViewCell: UITableViewCell {
    @IBOutlet weak var imgPreview: UIImageView!
    @IBOutlet weak var labelKategori: UILabel!
    @IBOutlet weak var labelJudul: UILabel!
    @IBOutlet weak var labelRilis: UILabel!
    @IBOutlet weak var labelisi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
