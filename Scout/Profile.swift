//
//  Profile.swift
//  Scout
//
//  Created by Vedat Bilaloğlu on 25.01.2020.
//  Copyright © 2020 Vedat Bilaloglu. All rights reserved.
//

import Foundation
import UIKit

class Profile{
    
    var image : UIImage
    var name : String?
    var age : String?
    var currentClub : String?
    var foot : String?
    var position : String?
    
    init(footballerName : String, footballerAge : String, footballerCurrentClub : String, footballerFoot : String, footballerPosition : String, footballerImage : UIImage) {
       
        name = footballerName
        age = footballerAge
        currentClub = footballerCurrentClub
        foot = footballerFoot
        position = footballerPosition
        image = footballerImage
        
    }
    
}
