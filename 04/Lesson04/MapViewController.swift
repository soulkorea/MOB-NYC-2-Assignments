
import UIKit


class MapViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate, UITableViewDataSource {
    
    var dicto = [String: String]()
    var arrayOfKeys = [String]()
    var arrayOfValues = [String]()
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dicto.count
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        let textEntry = textField.text
        if (textEntry != nil) {
            
            let textOne = textFieldOne.text
            let textTwo = textFieldTwo.text
            
            dicto[textOne] = textTwo
            
            textFieldOne.text=""
            textFieldTwo.text=""
            
            tableView.reloadData()
        }
        
        textField.resignFirstResponder()
        
        return false
    }
    
   
    
    
        
    @IBOutlet weak var textFieldOne: UITextField!
  
    @IBOutlet weak var textFieldTwo: UITextField!
        
    @IBOutlet weak var tableView: UITableView!
    
    
 
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("mycell") as UITableViewCell
        
        let sortedKeys = Array(dicto.keys).sorted(<)
        
        cell.textLabel!.text = "\(arrayOfKeys[indexPath.row]) : \(arrayOfValues[indexPath.row])"
        cell.detailTextLabel?.text = dicto[sortedKeys[indexPath.row]]
        
//        let person = rows.keys.array[indexPath.row]
//        cell.textLabel!.text = person
//        cell.detailTextLabel!.text = rows[person]
        
//        cell.textLabel!.text = rows[rows.count - 1 - indexPath.row]

        
        
        return cell
    }
    
    func addKeysAndValuesToDicto() {
        
        arrayOfKeys = dicto.keys.array
        arrayOfValues = dicto.values.array
    }
   
    
    func showKeyboard() {
        textFieldOne.backgroundColor = UIColor.blueColor()
        textFieldTwo.backgroundColor = UIColor.blueColor()
    }
    
    func hideKeyboard() {
        textFieldOne.backgroundColor = UIColor.redColor()
        textFieldTwo.backgroundColor = UIColor.redColor()
        
    }
    
        
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */

}
