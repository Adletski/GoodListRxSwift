//
//  Task.swift
//  GoodListRxSwift
//
//  Created by Adlet Zhantassov on 13.11.2024.
//

import Foundation

enum Priority: Int {
    case high
    case medium
    case low
}

struct Task {
    let title: String
    let priority: Priority
}
