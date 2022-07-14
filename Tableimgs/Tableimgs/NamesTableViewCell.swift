//
//  NamesTableViewCell.swift
//  Tableimgs
//
//  Created by Bimal@AppStation on 29/04/22.
//

import UIKit

class NamesTableViewCell: UITableViewCell {
    
    @IBOutlet var labelname: UILabel!
    @IBOutlet var imageview: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setStrng(strNm: String, image: String){
        self.labelname.text = strNm
        
//        let img = UIImage(named:"personimg")
        
//        self.imageview.image = UIImage(named:"personimg")
//        let img = UIImage(named:"personimg")
//        self.imageview.image = img
        let photo = UIImage(named: image)
        self.imageview.image = photo
        
    }
    

}
