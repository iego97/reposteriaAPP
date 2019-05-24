//
//  ViewControllerSeleccion.swift
//  SweetBakeryApp
//
//  Created by Alumno on 23/05/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerSeleccion : UIViewController {
    
    static var numeroSeleccion : Int?
    
    
    
    @IBAction func doTapGalletas(_ sender: Any) {
        
        ViewControllerSeleccion.numeroSeleccion = 1
        performSegue(withIdentifier: "goToListaProductos", sender: nil)
        
    }
    
    @IBAction func doTapPasteles(_ sender: Any) {
        ViewControllerSeleccion.numeroSeleccion = 2
        performSegue(withIdentifier: "goToListaProductos", sender: nil)
    }
    
    @IBAction func doTapBollitos(_ sender: Any) {
        ViewControllerSeleccion.numeroSeleccion = 3
        performSegue(withIdentifier: "goToListaProductos", sender: nil)
    }
    
    @IBAction func doTapGelatina(_ sender: Any) {
        ViewControllerSeleccion.numeroSeleccion = 4
        performSegue(withIdentifier: "goToListaProductos", sender: nil)
    }
    
    @IBAction func doTapFlan(_ sender: Any) {
        ViewControllerSeleccion.numeroSeleccion = 5
        performSegue(withIdentifier: "goToListaProductos", sender: nil)
    }    
}
