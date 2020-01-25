//
//  ViewController.swift
//  Scout
//
//  Created by Vedat Bilaloğlu on 25.01.2020.
//  Copyright © 2020 Vedat Bilaloglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var footballerArray = [Profile]()
    var chosenFootballer : Profile?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // For show on screen
        tableView.delegate = self
        tableView.dataSource = self
        
        let merih = Profile(footballerName: "Merih Demiral", footballerAge: "21", footballerCurrentClub: "Juventus", footballerFoot: "Right", footballerPosition: "Defence", footballerImage: UIImage(named: "merih")!)
        let cengiz = Profile(footballerName: "Cengiz Under", footballerAge: "22", footballerCurrentClub: "Roma", footballerFoot: "Left", footballerPosition: "Right Winger", footballerImage: UIImage(named: "cengiz")!)
        let caglar = Profile(footballerName: "Caglar Soyuncu", footballerAge: "23", footballerCurrentClub: "Leicester", footballerFoot: "Right", footballerPosition: "Defence", footballerImage: UIImage(named: "caglar")!)
        let ugurcan = Profile(footballerName: "Ugurcan Cakır", footballerAge: "23", footballerCurrentClub: "Trabzon SK", footballerFoot: "Right", footballerPosition: "GoalKeeper", footballerImage: UIImage(named: "ugurcan")!)
        
        footballerArray.append(merih)
        footballerArray.append(cengiz)
        footballerArray.append(caglar)
        footballerArray.append(ugurcan)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return footballerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = footballerArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFootballer = footballerArray[indexPath.row]
        self.performSegue(withIdentifier: "toScout", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toScout" {
            let destinationVC = segue.destination as! scoutVC
            destinationVC.selectedFootballer = chosenFootballer
        }
    }
}

