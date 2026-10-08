//
//  PipelineLabTests.swift
//  PipelineLabTests
//
//  Created by Calogero Friscia on 07/10/26.
//

import Testing

@testable import PipelineLab

@MainActor
struct TapCounterTests {

    @Test func startsAtZero() {
        let counter = TapCounter()
        #expect(counter.count == 0)
    }

    @Test func tapAddsOne() {
        var counter = TapCounter()
        counter.tap()
        counter.tap()
        #expect(counter.count == 2)
    }

    @Test func resetGoesBackToZero() {
        var counter = TapCounter()
        counter.tap()
        #expect(counter.count == 1)
        counter.reset()
        #expect(counter.count == 0)
        counter.tap()
        #expect(counter.count == 1)
        counter.tap()
        #expect(counter.count == 2)
    }
}
