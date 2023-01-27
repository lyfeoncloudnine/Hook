import UIKit

public extension UIView {
    var hook: Hook {
        Hook(view: self)
    }
    
    final class Hook {
        fileprivate var view: UIView
        
        init(view: UIView) {
            self.view = view
        }
    }
}

// MARK: - Top

public extension UIView.Hook {
    @discardableResult
    func top(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.topAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func top(greaterThenOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func top(lessThenOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.topAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
}

// MARK: - Leading

public extension UIView.Hook {
    @discardableResult
    func leading(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.leadingAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func leading(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constant = view.leadingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constant.isActive = true
        constant.priority = priority
        
        return self
    }
    
    @discardableResult
    func leading(lessThenOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constant = view.leadingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constant.isActive = true
        constant.priority = priority
        
        return self
    }
}

// MARK: - Bottom

public extension UIView.Hook {
    @discardableResult
    func bottom(equalTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.bottomAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func bottom(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func bottom(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
}

// MARK: - Trailing

public extension UIView.Hook {
    
    @discardableResult
    func trailing(equalTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.trailingAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func trailing(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constant = view.trailingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constant.isActive = true
        constant.priority = priority
        
        return self
    }
    
    @discardableResult
    func trailing(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constant = view.trailingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constant.isActive = true
        constant.priority = priority
        
        return self
    }
}

// MARK: - Width

public extension UIView.Hook {
    @discardableResult
    func width(equalToConstant constant: CGFloat, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraints = view.widthAnchor.constraint(equalToConstant: constant)
        constraints.isActive = true
        constraints.priority = priority
        
        return self
    }
    
    @discardableResult
    func width(greaterThanOrEqualToConstant constant: CGFloat, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.widthAnchor.constraint(greaterThanOrEqualToConstant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func width(lessThanOrEqualToConstant constant: CGFloat, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.widthAnchor.constraint(lessThanOrEqualToConstant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func width(equalTo anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.widthAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func width(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.widthAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func width(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.widthAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func width(equalTo anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.widthAnchor.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func width(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.widthAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func width(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.widthAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
}

// MARK: - Height

public extension UIView.Hook {
    @discardableResult
    func height(equalToConstant constant: CGFloat, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraints = view.heightAnchor.constraint(equalToConstant: constant)
        constraints.isActive = true
        constraints.priority = priority
        
        return self
    }
    
    @discardableResult
    func height(greaterThanOrEqualToConstant constant: CGFloat, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.heightAnchor.constraint(greaterThanOrEqualToConstant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func height(lessThanOrEqualToConstant constant: CGFloat, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.heightAnchor.constraint(lessThanOrEqualToConstant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func height(equalTo anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.heightAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func height(greaterThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.heightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func height(lessThanOrEqualTo anchor: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.heightAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func height(equalTo anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.heightAnchor.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func height(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.heightAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func height(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.heightAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
}

// MARK: - Center

public extension UIView.Hook {
    @discardableResult
    func centerX(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.centerXAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
    
    @discardableResult
    func centerY(to anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> UIView.Hook {
        let constraint = view.centerYAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        
        return self
    }
}

// MARK: - Combination

public extension UIView.Hook {
    @discardableResult
    func all(to superView: UIView, topConstant: CGFloat = 0, leadingConstant: CGFloat = 0, bottomConstant: CGFloat = 0, trailingConstant: CGFloat = 0, useSafeArea: Bool = true) -> UIView.Hook {
        if useSafeArea {
            view.hook
                .top(equalTo: superView.safeAreaLayoutGuide.topAnchor, constant: topConstant)
                .leading(equalTo: superView.leadingAnchor, constant: leadingConstant)
                .bottom(equalTo: superView.safeAreaLayoutGuide.bottomAnchor, constant: bottomConstant)
                .trailing(equalTo: superView.trailingAnchor, constant: trailingConstant)
            
        } else {
            view.hook
                .top(equalTo: superView.topAnchor, constant: topConstant)
                .leading(equalTo: superView.leadingAnchor, constant: leadingConstant)
                .bottom(equalTo: superView.bottomAnchor, constant: bottomConstant)
                .trailing(equalTo: superView.trailingAnchor, constant: trailingConstant)
        }
        
        return self
    }
}

// MARK: - Util

public extension UIView.Hook {
    func constraint(_ attribute: NSLayoutConstraint.Attribute) -> NSLayoutConstraint? {
        if attribute == .width || attribute == .height {
            return lookForConstraint(in: self.view.superview, attribute: attribute) ?? lookForConstraint(in: self.view, attribute: attribute)
        } else {
            return lookForConstraint(in: self.view.superview, attribute: attribute)
        }
    }
    
    private func lookForConstraint(in view: UIView?, attribute: NSLayoutConstraint.Attribute) -> NSLayoutConstraint? {
        guard let constraints = view?.constraints else { return nil }
        
        for constraint in constraints {
            if let firstItem = constraint.firstItem as? NSObject,
               firstItem == self.view && constraint.firstAttribute == attribute {
                return constraint
            }
            if let secondItem = constraint.secondItem as? NSObject,
               secondItem == self.view && constraint.secondAttribute == attribute {
                return constraint
            }
        }
        
        return nil
    }
}
