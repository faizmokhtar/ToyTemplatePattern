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

class NewDonors: DonorDatabase {
  override func filter(donors: [Donor]) -> [Donor] {
    return donors.filter({ $0.lastDonation == 0 })
  }

  override func generate(donors: [Donor]) -> [String] {
    return donors.map({ "Hi \($0.firstName)" })
  }
}

let newDonors = NewDonors()
for invite in newDonors.generate(maxNumber: 2) {
  print(invite)
}
