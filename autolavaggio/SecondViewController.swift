//
//  SecondViewController.swift
//  autolavaggio
//
//  Created by Chiara Amato on 11/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var messageSecondVC: UILabel!
    var item: CarsModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let itemCar = self.item {
            self.messageSecondVC.text = ("\(itemCar.nameClient), \(itemCar.model), \(itemCar.cilindrata)")
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func closeSecondVC(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
