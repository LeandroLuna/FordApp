//
//  ViewController.swift
//  FordPass
//
//  Created by Leandro Luna on 10/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var carSelector: UISegmentedControl!
    @IBOutlet weak var carTitle: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var firstUpgrade: UILabel!
    @IBOutlet weak var secondUpgrade: UILabel!
    @IBOutlet weak var thirdUpgrade: UILabel!
    @IBOutlet weak var fourthUpgrade: UILabel!
    
    // Get model CarBrain instance
    var carBrain = CarBrain()

    // Do any additional setup after loading the view.
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(target: 0)
    }
    
    // Handle click button
    @IBAction func upgradeButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Em manutenção!", message: "Retornaremos o serviço em breve..", preferredStyle: .alert)

        let OKAction = UIAlertAction(title: "Ok", style: .default) {
            (action: UIAlertAction!) in
        }
        
        alertController.addAction(OKAction)

        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel) {
            (action: UIAlertAction!) in
        }
        
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    // Change selected car
    @IBAction func selector(_ sender: Any) {
        let targetCarIndex = carSelector.selectedSegmentIndex
        updateUI(target: targetCarIndex)
    }
    
    // Update interface
    func updateUI(target: Int){
        let selectedCar = carBrain.getCar(position: target)
        carTitle.text = selectedCar.model
        carImage.image = UIImage(imageLiteralResourceName: selectedCar.photo)
        firstUpgrade.text = selectedCar.availableUpgrades[0]
        secondUpgrade.text = selectedCar.availableUpgrades[1]
        thirdUpgrade.text = selectedCar.availableUpgrades[2]
        fourthUpgrade.text = selectedCar.availableUpgrades[3]
    }
    
}

