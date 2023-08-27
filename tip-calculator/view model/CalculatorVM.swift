//
//  CalculatorVM.swift
//  tip-calculator
//
//  Created by Sajed Shaikh on 27/08/23.
//

import Foundation
import Combine

class CalculatorVM {
    
    struct Input {
        let billPublisher: AnyPublisher<Double, Never>
        let tipPublisher: AnyPublisher<Tip, Never>
        let splitPublisher: AnyPublisher<Int, Never>
    }
    
    struct Output {
        let updateViewPublisher: AnyPublisher<Result, Never>
    }
    
    private var cancellables = Set<AnyCancellable>()
    
    func transform(input: Input) -> Output {
        
        input.billPublisher.sink { bill in
            print("The bill: \(bill)")
        }.store(in: &cancellables)
        
        let result = Result(
            amountPerPerson: 500,
            totalBill: 1000,
            totalTip: 50.5)
        return Output(updateViewPublisher: Just(result).eraseToAnyPublisher())
    }
}
