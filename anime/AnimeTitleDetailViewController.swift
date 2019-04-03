//
//  AnimeTitleDetailViewController.swift
//  anime
//
//  Created by artyom.andreev on 03/04/2019.
//  Copyright © 2019 artyom.andreev. All rights reserved.
//

import UIKit

class AnimeTitleDetailViewController: UIViewController {

    var AnimeTitleModel: TitleData?
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var AnimeTitle: UILabel!
    @IBOutlet weak var AnimeType: UILabel!
    @IBOutlet weak var Episodes: UILabel!
    @IBOutlet weak var EpisodesLength: UILabel!
    @IBOutlet weak var Description: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if AnimeTitleModel != nil {
            fillFromModel()
        }
    }
    
    func fillFromModel() {
        if let name = AnimeTitleModel?.file {
            image.image = UIImage(named: name)
        }
        AnimeTitle.text = AnimeTitleModel?.name
        AnimeType.text = AnimeTitleModel?.type
        if let episodes = AnimeTitleModel?.episodes {
            Episodes.text = String(episodes)
        }
        EpisodesLength.text = AnimeTitleModel?.episodeLength
        Description.text = AnimeTitleModel?.descr
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
