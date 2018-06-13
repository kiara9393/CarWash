//
//  FirstViewController.swift
//  autolavaggio
//
//  Created by Chiara Amato on 11/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var nameClient_1: UILabel!
    @IBOutlet weak var modelCar_1: UILabel!
    @IBOutlet weak var cilindrataCar_1: UILabel!
    
    @IBOutlet weak var nameClient_2: UILabel!
    @IBOutlet weak var modelCar_2: UILabel!
    @IBOutlet weak var cilindrataCar_2: UILabel!
    
    @IBOutlet weak var nameClient_3: UILabel!
    @IBOutlet weak var modelCar_3: UILabel!
    @IBOutlet weak var cilindrataCar_3: UILabel!
 
    
    @IBOutlet weak var view0: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var outOfCArs: UILabel!
    
    
    var myDataSource = [CarsModel]()
    var viewSource = [UIView]()
    
    var myIndex: Int?
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        populateDataSource()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print ("viewWillAppear")
        
        if let index = self.myIndex {
            if self.viewSource.count > 0 {
                let myView = self.viewSource[index]
                myView.isHidden = true
            }
        }
        
        if self.counter == self.myDataSource.count {
            self.outOfCArs.isHidden = false
            self.outOfCArs.text = "Non ci sono più auto da lavare"
        }
    }
    
    
    
    func populateDataSource(){
        self.viewSource = [view0, view1, view3]

        let fiesta: CarsModel = CarsModel.init(nameClient: "Luca", model: "Fiesta", cilindrata: "2000")
        let panda: CarsModel = CarsModel.init(nameClient: "Daviano", model: "Panda", cilindrata: "1400")
        let corsa: CarsModel = CarsModel.init(nameClient: "Ciccio", model: "Corsa", cilindrata: "1200")
        
        self.myDataSource = [fiesta, panda, corsa]
        
        
        self.nameClient_1.text = myDataSource[0].nameClient
        self.modelCar_1.text = myDataSource[0].model
        self.cilindrataCar_1.text = myDataSource[0].cilindrata
        
        self.nameClient_2.text = myDataSource[1].nameClient
        self.modelCar_2.text = myDataSource[1].model
        self.cilindrataCar_2.text = myDataSource[1].cilindrata
        
        self.nameClient_3.text = myDataSource[2].nameClient
        self.modelCar_3.text = myDataSource[2].model
        self.cilindrataCar_3.text = myDataSource[2].cilindrata
        
    }

    
    
    
    @IBAction func btnInfo_1(_ sender: Any) {
        print("btnInfo_1")
        self.counter += 1
        self.myIndex = 0
        self.performSegue(withIdentifier: "showSecondVC", sender: self)
    }
    
    @IBAction func btnInfo_2(_ sender: Any) {
        print("btnInfo_2")
        self.counter += 1
        self.myIndex = 1
        self.performSegue(withIdentifier: "showSecondVC", sender: self)
    }
    
    @IBAction func btnInfo_3(_ sender: Any) {
        print("btnInfo_3")
        self.counter += 1
        self.myIndex = 2
        self.performSegue(withIdentifier: "showSecondVC", sender: self)
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondVC" {
            let destination = segue.destination as! SecondViewController
            if let index = self.myIndex {
                destination.item = self.myDataSource[index]
            }
        }
        else if segue.identifier == "showSecondVC" {
            print ("vado to OtherVC")
        }
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
