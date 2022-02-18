
import UIKit

class ViewController: UIViewController {
    var nombrenviar:String?
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarParametros"{
            let objDestino = segue.destination as! pantalla2ViewController
            objDestino.recibirNombre = nombreTF.text
            objDestino.recibirEdad = edadTF.text
            
        }
    }
}
