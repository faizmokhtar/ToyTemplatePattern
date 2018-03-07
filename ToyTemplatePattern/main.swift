//
//  main.swift
//  ToyTemplatePattern
//
//  Created by Faiz Mokhtar on 06/03/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import Foundation

let donorDB = DonorDatabase()

let galaInvitations = donorDB.generateGalaInvitations(maxNumber: 2)
for invite in galaInvitations {
  print(invite)
}
