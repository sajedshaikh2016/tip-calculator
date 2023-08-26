//
//  ResultView.swift
//  tip-calculator
//
//  Created by Sajed Shaikh on 26/08/23.
//

import UIKit

class ResultView: UIView {
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        backgroundColor = .gray
    }
}