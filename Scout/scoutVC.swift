//
//  scoutVC.swift
//  Scout
//
//  Created by Vedat Bilaloğlu on 25.01.2020.
//  Copyright © 2020 Vedat Bilaloglu. All rights reserved.
//

import UIKit

class scoutVC: UIViewController {

    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var footLabel: UILabel!
    @IBOutlet weak var currentClubLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var selectedFootballer : Profile?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLabel.text = "Name : " + selectedFootballer!.name!
        ageLabel.text = "Age : " + selectedFootballer!.age!
        currentClubLabel.text = "Current Club : " + selectedFootballer!.currentClub!
        footLabel.text = "Foot : " + selectedFootballer!.foot!
        positionLabel.text = "Position : " + selectedFootballer!.position!
        imageView.image = selectedFootballer?.image
        
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
