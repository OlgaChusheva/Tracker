//
//  Color+Extension.swift
//  Tracker
//
//  Created by Ольга Чушева on 26.02.2024.
//

import UIKit

final class Colors {
    var viewBackgroundColor = UIColor.systemBackground
    var datePickerTintColor = UIColor { (traits) -> UIColor in
        let isDarkMode = traits.userInterfaceStyle == .dark
        return isDarkMode ? UIColor.black : UIColor.black
    }
}

extension UIColor {
    
    static var backgroundColor: UIColor { UIColor(named: "BackgroundColorYP") ?? UIColor.red }
    var gradientColor: UIColor { UIColor (named: "gradientColor1") ?? UIColor.red }
    var gradientColor2: UIColor { UIColor(named: "gradientColor2") ?? UIColor.green }
    var gradientColor3: UIColor { UIColor(named: "gradientColor3") ?? UIColor.blue }
    static var ypLightGray: UIColor { UIColor(named: "LightGrayYP") ?? UIColor.gray }
    static var ypGray: UIColor { UIColor(named: "GrayYP") ?? UIColor.gray }
    static var ypRed: UIColor { UIColor(named: "RedYP") ?? UIColor.red }
    static var ypBlack: UIColor { UIColor(named: "BlackYP") ?? UIColor.black }
    static var ypBlue: UIColor { UIColor(named: "BlueYP") ?? UIColor.blue }
    static var ypGrayFind: UIColor { UIColor(named: "FindYP") ?? UIColor.gray }
    static var ypGrayDate: UIColor { UIColor(named: "DateYP") ?? UIColor.gray }
    var color1: UIColor { UIColor(named: "Color1") ?? UIColor.red}
    var color2: UIColor { UIColor(named: "Color2") ?? UIColor.red }
    var color3: UIColor { UIColor(named: "Color3") ?? UIColor.red }
    var color4: UIColor { UIColor(named: "Color4") ?? UIColor.red }
    var color5: UIColor { UIColor(named: "Color5") ?? UIColor.red }
    var color6: UIColor { UIColor(named: "Color6") ?? UIColor.red }
    var color7: UIColor { UIColor(named: "Color7") ?? UIColor.red }
    var color8: UIColor { UIColor(named: "Color8") ?? UIColor.red }
    var color9: UIColor { UIColor(named: "Color9") ?? UIColor.red }
    var color10: UIColor { UIColor(named: "Color10") ?? UIColor.red }
    var color11: UIColor { UIColor(named: "Color11") ?? UIColor.red }
    var color12: UIColor { UIColor(named: "Color12") ?? UIColor.red }
    var color13: UIColor { UIColor(named: "Color13") ?? UIColor.red }
    var color14: UIColor { UIColor(named: "Color14") ?? UIColor.red }
    var color15: UIColor { UIColor(named: "Color15") ?? UIColor.red }
    var color16: UIColor { UIColor(named: "Color16") ?? UIColor.red }
    var color17: UIColor { UIColor(named: "Color17") ?? UIColor.red }
    var color18: UIColor { UIColor(named: "Color18") ?? UIColor.red }
    var switchColor: UIColor { .ypBlue }
    
    var hexString: String {
        let components = self.cgColor.components
        let r: CGFloat = components?[0] ?? 0.0
        let g: CGFloat = components?[1] ?? 0.0
        let b: CGFloat = components?[2] ?? 0.0
        return String.init(
            format: "%02lX%02lX%02lX",
            lroundf(Float(r * 255)),
            lroundf(Float(g * 255)),
            lroundf(Float(b * 255))
        )
    }
}
