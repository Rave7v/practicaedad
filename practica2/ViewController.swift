
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreTF: UITextField!
    @IBOutlet weak var edadTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enviarBtn(_ sender: UIButton) {
        //print("enviar")
        performSegue(withIdentifier: "enviarParametros", sender: self)
    }
}
