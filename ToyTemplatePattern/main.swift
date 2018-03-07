//
//  main.swift
//  ToyTemplatePattern
//
//  Created by Faiz Mokhtar on 06/03/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import Foundation

let donorDB = DonorDatabase()

let galaInvitations = donorDB.generate(maxNumber: 2)
for invite in galaInvitations {
  print(invite)
}

donorDB.filter = { $0.filter({ $0.lastDonation == 0 })}
donorDB.generate = { $0.map({ "Hi \($0.firstName)" })}

let newDonors = donorDB.generate(maxNumber: 2)
for donor in newDonors {
  print(donor)
}
