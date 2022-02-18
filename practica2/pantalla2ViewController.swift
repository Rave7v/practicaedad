
import UIKit

class pantalla2ViewController: UIViewController {
    var recibirNombre: String?//especificamos variabeles opcional
    var recibirEdad:String?//recibe edad
    @IBOutlet weak var nombreusuario: UILabel!
    @IBOutlet weak var imagenValidacion: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //modifica label
        nombreusuario.text = recibirNombre
        let conversion = Int(recibirEdad!) ?? 0
        //if let edadInt = Int(recibirEdad!){
         //   print("esta es una variable segura, iflet:")
        //}
        
        if conversion > 18{
            print("mayor de edad")
            self.view.backgroundColor = UIColor.cyan
            imagenValidacion.image = UIImage(named: "mayor")
            nombreusuario.text = "Bienvenido \(recibirNombre) eres mayor de 18"
            //systemName
            
        }else{
            print("menor de edad")
            self.view.backgroundColor = UIColor.red
            imagenValidacion.image = UIImage(named: "U18")
            "Bienvenido \(recibirNombre) eres menor de 18"
        }
    }

    @IBAction func regresarBTn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func salirBtn(_ sender: UIButton) {
        exit(0)
    }
}
