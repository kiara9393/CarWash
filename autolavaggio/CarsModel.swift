//
//  CarsModel.swift
//  autolavaggio
//
//  Created by Chiara Amato on 11/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class CarsModel: NSObject {

    var nameClient: String
    var model: String
    var cilindrata: String
    
    init(nameClient: String, model: String, cilindrata: String){
        self.nameClient = nameClient
        self.model = model
        self.cilindrata = cilindrata
    }

}
