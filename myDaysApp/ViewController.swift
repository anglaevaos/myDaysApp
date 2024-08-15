
import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var infoLabel: UILabel!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
     
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    @IBAction func resultButtonTaped(_ sender: UIButton) {
        infoLabel.text = "You have been enjoing life for \(numberOfDays)!"
    }
}

