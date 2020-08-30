//
//  BarParentControl.swift
//  
//
//  Created by Marek Přidal on 30/08/2020.
//

import UIKit

final class BarParentControl: UIControl {

    var touchHandler: (() -> Void)?

    init(touchHandler: (() -> Void)? = nil) {
        super.init(frame: .zero)

        self.touchHandler = touchHandler
        commonInit()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        #if swift(>=5.3)
        if #available(iOS 14.0, *) {
            addAction(UIAction(handler: { [weak self] _ in
                self?.touchHandler?()
            }), for: .touchUpInside)
        } else {
            addTarget(self, action: #selector(didTap), for: .touchUpInside)
        }
        #else
        addTarget(self, action: #selector(didTap), for: .touchUpInside)
        #endif
    }

    @objc private func didTap() {
        touchHandler?()
    }
}
