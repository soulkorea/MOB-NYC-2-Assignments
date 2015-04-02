
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberView: UILabel!
    
    var result = Float()
    var currentNumber = Float()
    var currentOp = String()
    
    
   override func viewDidLoad() {
        super.viewDidLoad()
    
        currentOp = "="
        numberView.text = ("\(result)")
    }
    
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func buttonPressed(sender: UIButton) {
        currentNumber = currentNumber * 10 + Float(sender.titleLabel!.text!.toInt()!)
        numberView.text = ("\(currentNumber)")
    }
    
    
    @IBAction func buttonOperation(sender: UIButton) {
        switch currentOp {
            case "=":
                result = currentNumber
            case "➕":
                result = result + currentNumber
            case "➖":
                result = result - currentNumber
            case "✖️":
                result = result * currentNumber
            case "➗":
                result = result / currentNumber
            case "%":
                result = result / 100
            default:
                println("error")
        }
        
        currentNumber = 0
        numberView.text = ("\(result)")
        
        if(sender.titleLabel!.text == "=") {
            result = 0
        }
    
        currentOp = sender.titleLabel!.text! as String!
    }
    
    @IBAction func buttonClear(sender: UIButton) {
        result = 0
        currentNumber = 0
        currentOp = "="
        numberView.text = ("\(result)")
    }
    
    
    @IBAction func percentPressed(sender: AnyObject) {
        result = currentNumber / 100
        currentNumber = currentNumber / 100
        currentOp = "="
        numberView.text = ("\(result)")
    }
    
  
    @IBAction func plusMinusPressed(sender: UIButton) {
        result = currentNumber * -1
        currentNumber = currentNumber * -1
        currentOp = "="
        numberView.text = ("\(result)")
    }
    
}