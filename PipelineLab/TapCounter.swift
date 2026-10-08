//
//  TapCounter.swift
//  PipelineLab
//
//  Created by Calogero Friscia on 07/10/26.
//

import Foundation

struct TapCounter {
    private(set) var count = 0

    mutating func tap() {
        count += 1
    }

    mutating func reset() {
        count = 0
    }
}
