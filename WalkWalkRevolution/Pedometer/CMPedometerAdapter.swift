//
//  CMPedometerAdapter.swift
//  WalkWalkRevolution
//
//  Created by Juan Dominguez  on 4/2/20.
//  Copyright © 2020 Juan Dominguez and Qiyue Wang. All rights reserved.
//

import Foundation
import CoreMotion

class CMPedometerAdapter: PedometerProtocol {
    
    var pedometer: CMPedometer
    
    init() {
        pedometer = CMPedometer();
    }
    
    func getDailySteps(currentTime time: Date) -> Int64 {
        var timeStr = time.description
        let startIdx = timeStr.index(timeStr.startIndex, offsetBy: 11)
        let endIdx = timeStr.index(timeStr.startIndex, offsetBy: 19)
        timeStr.replaceSubrange(startIdx..<endIdx, with: "00:00:00")
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm:ss zzzz"
        let startOfDay = format.date(from: timeStr)
        print(startOfDay!.description)
        return 0
    }
    
}
