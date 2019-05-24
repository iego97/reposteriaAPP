//
//  Galleta.swift
//  SweetBakeryApp
//
//  Created by Alumno on 23/05/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Galleta{
 
    var nombre : String?
    var precio : Int?
    var imagen : UIImage?
    var descripcion : String?
    
    init(nombreProducto : String, precioProducto : Int, imagenProducto : UIImage, descripcionProducto : String) {
        self.nombre = nombreProducto
        self.precio = precioProducto
        self.imagen = imagenProducto
        self.descripcion = descripcionProducto
    }
    
}
