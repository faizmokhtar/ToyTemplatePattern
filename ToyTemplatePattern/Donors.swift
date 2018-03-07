//
//  Donors.swift
//  ToyTemplatePattern
//
//  Created by Faiz Mokhtar on 06/03/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import Foundation

struct Donor {
  let title: String
  let firstName: String
  let familyName: String
  let lastDonation: Float

  init(_ title: String, _ firstName: String, _ familyName: String, _ lastDonation: Float) {
    self.title = title
    self.firstName = firstName
    self.familyName = familyName
    self.lastDonation = lastDonation
  }
}

class DonorDatabase {
  private var donors: [Donor]

  init() {
    donors = [
      Donor("Ms", "Anne", "Jones", 0),
      Donor("Mr", "Bob", "Smith", 100),
      Donor("Dr", "Alice", "Doe", 200),
      Donor("Prof", "Joe", "Davis", 320),
    ]
  }

  func generateGalaInvitations(maxNumber: Int) -> [String] {
    var targetDonors: [Donor] = donors.filter({ $0.lastDonation > 0 })
    targetDonors.sorted(by: { $0.lastDonation > $1.lastDonation })
    if(targetDonors.count > maxNumber) {
      targetDonors = Array(targetDonors[0..<maxNumber])
    }

    return targetDonors.map({ donor in
      return "Dear \(donor.title). \(donor.familyName)"
    })
  }
}
