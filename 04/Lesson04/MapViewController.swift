
import UIKit


class MapViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate, UITableViewDataSource {
    
    var dicto = [String: String]()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dicto.count
    }
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        textFieldTwo.becomeFirstResponder()
//    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField === textFieldOne) {
            textFieldTwo.becomeFirstResponder()
        } else if (textField === textFieldTwo) {
            dicto[textFieldOne.text] = textFieldTwo.text
            tableView.reloadData()
            textFieldOne.text=""
            textFieldTwo.text=""
            textFieldTwo.resignFirstResponder()
        }
        return true
    }
    
   
    
    
        
    @IBOutlet weak var textFieldOne: UITextField!
  
    @IBOutlet weak var textFieldTwo: UITextField!
        
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("mycell") as UITableViewCell
        
        let sortedKeys = Array(dicto.keys).sorted(<)
        
        cell.textLabel!.text = sortedKeys[indexPath.row]
        cell.detailTextLabel?.text = dicto[sortedKeys[indexPath.row]]
        
//        let person = rows.keys.array[indexPath.row]
//        cell.textLabel!.text = person
//        cell.detailTextLabel!.text = rows[person]
        
//        cell.textLabel!.text = rows[rows.count - 1 - indexPath.row]

        
        
        return cell
    }
    
    
    
        
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */

}
