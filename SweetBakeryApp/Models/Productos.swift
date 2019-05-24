//
//  Productos.swift
//  SweetBakeryApp
//
//  Created by Alumno on 23/05/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Productos{
    
    static var galletas : [Galleta] = [
        Galleta(
            nombreProducto : "Galleta de chocolate",
            precioProducto : 20,
            imagenProducto : (UIImage(named: "galletas")!),
            descripcionProducto : "Muy rico todo")]
    
    static var pasteles : [Pastel] = [
        Pastel(nombreProducto: "Pastel de chocolate ruso",
               precioProducto: 35,
               imagenProducto: (UIImage(named: "pastel")!),
               descripcionProducto: "El pastel mas weno del mundo")]
    
    static var bollos : [Bollo] = [
        Bollo(nombreProducto: "Bollito de oro",
              precioProducto: 420,
              imagenProducto: (UIImage(named: "bollo")!),
              descripcionProducto: "bollito de oro")]
    
    static var gelatinas : [Gelatina] = [
        Gelatina(nombreProducto: "Gelatina de uva",
                 precioProducto: 200,
                 imagenProducto: (UIImage(named: "gelatina")!),
                 descripcionProducto: "Gelatina de uva wenisima")]
    
    static var flanes : [Flan] = [
        Flan(nombreProducto: "Flan de california",
             precioProducto: 120,
             imagenProducto: (UIImage(named: "flan")!),
             descripcionProducto: "Flan de california wenisimo")]
    
}
