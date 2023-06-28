## An extension to style UITextField and add bottom border to it - Swift

### Sample
<p align="center">
<img width="472" src="https://github.com/tareqalhammoodi/TextFieldStyle-Swift/assets/44919941/fef6b178-b1f1-4491-aa49-271d9fda72cd">
</p>

### How to use?

1. Add this extension to your code.
   ```
     extension UIView {
        func addBottomBorder(color: UIColor, width: CGFloat) {
            let border = CALayer()
            border.backgroundColor = color.cgColor
            border.frame = CGRect(x: 0, y: frame.size.height - width,
                                  width: frame.size.width - 25, height: width)
            layer.addSublayer(border)
        }
    }
   ```
   
2. Make sure you have imported `UIKit` framework.
   ```
   import UIKit
   ```
3. Then inside your ViewController file call `addBottomBorder()` from `viewDidLayoutSubviews()` function as shown bellow:
   ```
   override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
   
        yourTextFieldName.addBottomBorder(color: .gray, width: 0.5)

   }
   ```
4. Make sure your text field has no background color to have the same look. (Optional)
   ```
   yourTextFieldName.backgroundColor = .clear
   ```

### Final Output

<p align="center">
<img width="1091" src="https://github.com/tareqalhammoodi/TextFieldStyle-Swift/assets/44919941/58f4a077-c4c9-4d08-8751-9504033bdcad">
</p>

### Need Help?
You can reach me on [Twitter](https://twitter.com/tareqalhammoodi).

### [Buying me a cookie](https://www.buymeacoffee.com/tariq2000mf) will be appreciated :)
