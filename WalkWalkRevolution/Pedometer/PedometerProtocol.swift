//
//  PedometerAdapter.swift
//  WalkWalkRevolution
//
//  Created by Juan Dominguez  on 4/2/20.
//  Copyright © 2020 Juan Dominguez and Qiyue Wang. All rights reserved.
//

import Foundation

protocol PedometerProtocol {
    func getDailySteps(currentTime time: Date) -> Int64
}
