//
//  ViewController.swift
//  FordPass
//
//  Created by Leandro Luna on 10/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

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
    
}

