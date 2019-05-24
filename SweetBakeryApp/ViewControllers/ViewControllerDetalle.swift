//
//  ViewControllerDetalle.swift
//  SweetBakeryApp
//
//  Created by Alumno on 5/24/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerDetalle : UIViewController{
    
    @IBOutlet weak var imgDetalle: UIImageView!
    
    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblPrecio: UILabel!
    
    @IBOutlet weak var txtDescripcion: UITextView!
    
    var galleta : Galleta?
    var pastel : Pastel?
    var bollo : Bollo?
    var gelatina : Gelatina?
    var flan : Flan?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if ViewControllerProductos.seleccion == 1
        {
            imgDetalle.image = galleta?.imagen
            lblNombre.text = galleta?.nombre
            lblPrecio.text = galleta?.precio?.description
            txtDescripcion.text = galleta?.descripcion
        }
        else if ViewControllerProductos.seleccion == 2
        {
            imgDetalle.image = pastel?.imagen
            lblNombre.text = pastel?.nombre
            lblPrecio.text = pastel?.precio?.description
            txtDescripcion.text = pastel?.descripcion
        }
        else if ViewControllerProductos.seleccion == 3
        {
            imgDetalle.image = bollo?.imagen
            lblNombre.text = bollo?.nombre
            lblPrecio.text = bollo?.precio?.description
            txtDescripcion.text = bollo?.descripcion
        }
        else if ViewControllerProductos.seleccion == 4
        {
            imgDetalle.image = gelatina?.imagen
            lblNombre.text = gelatina?.nombre
            lblPrecio.text = gelatina?.precio?.description
            txtDescripcion.text = gelatina?.descripcion
        }
        else if ViewControllerProductos.seleccion == 5
        {
            imgDetalle.image = flan?.imagen
            lblNombre.text = flan?.nombre
            lblPrecio.text = flan?.precio?.description
            txtDescripcion.text = flan?.descripcion
        }
        
        
        
    }
    
    
    
}
