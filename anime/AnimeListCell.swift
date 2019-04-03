//
//  AnimeListCell.swift
//  anime
//
//  Created by artyom.andreev on 03/04/2019.
//  Copyright © 2019 artyom.andreev. All rights reserved.
//

import UIKit

class AnimeListCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var titleEpCount: UILabel!
    @IBOutlet weak var titleImage: UIImageView!
    
    func fillCell(with model: TitleData) {
        titleName.text = model.name
        titleEpCount.text = String(model.episodes)
        titleImage.image = UIImage(named: model.file)
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
}
