//
//  MapListTableViewCell.swift
//  MapViewer
//
//  Created by Tammy Bearly on 4/15/20.
//  Copyright © 2020 Colorado Parks and Wildlife. All rights reserved.
//

import UIKit

class MapListTableViewCell: UITableViewCell {
    //
    // MARK: - IBOutlets
    //
    @IBOutlet weak var pdfImage: UIImageView!
    @IBOutlet weak var mapName: UITextField!
    @IBOutlet weak var fileSize: UILabel! // file size
    @IBOutlet weak var distToMap: UILabel! // distance to map
    @IBOutlet weak var loadingProgress: UIProgressView!
    @IBOutlet weak var fileName: UILabel! // pdf file name
    @IBOutlet weak var locationIcon: UIImageView!
    
    //
    // MARK: - Variables and Properties
    //
    var importing = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        // mapName textField was staying white, and when user
        // returns from viewing map, it was grey for a second
        if selected {
            mapName.backgroundColor = UIColor.lightGray
            contentView.backgroundColor = UIColor.lightGray
        } else {
            // for dark and light mode
            if #available(iOS 13.0, *) {
                mapName.backgroundColor = UIColor.systemBackground
                contentView.backgroundColor = UIColor.systemBackground
            } else {
                // Fallback on earlier versions
                mapName.backgroundColor = UIColor.white
                contentView.backgroundColor = UIColor.white
            }
        }
    }
    
    func updateDisplay(progress: Float){
        // update progress bar when importing a map
        loadingProgress.progress = progress
    }
}
