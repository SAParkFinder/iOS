//
//  ParkModel.swift
//  ParkFinder
//
//  Created by Leonard Box on 5/25/21.
//

import Foundation
import FirebaseFirestore

enum Category: String, Encodable, Decodable {
    case city
    case school
    case naturalArea
    case trailHead
    case greenWay
    case county
    case sara
    case state
    case national
}

struct Park: Encodable, Decodable {
    let parkID: Int
    let name: String
    let address: String
    let city: String
    let state: String
    let zipCode: Int
    let latitude: Double
    let longitude: Double
    let category: Category
    let featured: Bool
    let description: String
    let url: String
    let images: [String]
    let hasCommunityCenter: Bool
    let hasLearningHUB: Bool
    let hasWiFi: Bool
    let hasPublicArt: Bool
    let hasRestrooms: Bool
    let hasPortolet: Bool
    let hasWater: Bool
    let hasPavilion: Bool
    let hasPicnicTable: Bool
    let hasGrill: Bool
    let hasPlayground: Bool
    let hasBaseball: Bool
    let hasBasketball: Bool
    let hasBikePark: Bool
    let hasBikeRack: Bool
    let hasCricket: Bool
    let hasDiscGolf: Bool
    let hasDogPark: Bool
    let hasFitnessSystem: Bool
    let hasHandBall: Bool
    let hasMuiltPurpose: Bool
    let hasPickleBall: Bool
    let hasSkatePark: Bool
    let hasSoccer: Bool
    let hasSoftball: Bool
    let hasTennis: Bool
    let hasVolleyball: Bool
    let hasPool: Bool
    let hasSplashPad: Bool
    let hasUnpavedBikeTrail: Bool
    let hasPavedBikeTrail: Bool
    let hasWalkingTrail: Bool
    let trailLength: Bool
    let hasRepairStation: Bool
}
