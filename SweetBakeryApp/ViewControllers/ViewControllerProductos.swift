//
//  ViewControllerProductos.swift
//  SweetBakeryApp
//
//  Created by Alumno on 23/05/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerProductos : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tbProductos: UITableView!
    
    var celdaProductoSeleccionado : UITableViewCell?
    static var seleccion : Int = 0
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if(ViewControllerSeleccion.numeroSeleccion == 1)
        {
            ViewControllerProductos.seleccion = Productos.galletas.count
            
        }else if(ViewControllerSeleccion.numeroSeleccion == 2){
            
            ViewControllerProductos.seleccion = Productos.pasteles.count

        }else if(ViewControllerSeleccion.numeroSeleccion == 3){
            
            ViewControllerProductos.seleccion = Productos.bollos.count
            
        }else if(ViewControllerSeleccion.numeroSeleccion == 4){
            
            ViewControllerProductos.seleccion = Productos.gelatinas.count
            
        }else if(ViewControllerSeleccion.numeroSeleccion == 5){
            ViewControllerProductos.seleccion = Productos.flanes.count
        }
        
        return ViewControllerProductos.seleccion
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        if(ViewControllerSeleccion.numeroSeleccion == 1)
        {
            let celda = tableView.dequeueReusableCell(withIdentifier: "cellProducto") as! CeldaProdutos
            celda.lblNombreProducto.text = Productos.galletas[indexPath.row].nombre
            celda.imgViewProducto.image = Productos.galletas[indexPath.row].imagen
            
            
            celdaProductoSeleccionado = celda
            
        }else if(ViewControllerSeleccion.numeroSeleccion == 2){
            
            let celda = tableView.dequeueReusableCell(withIdentifier: "cellProducto") as! CeldaProdutos
            celda.lblNombreProducto.text = Productos.pasteles[indexPath.row].nombre
            celda.imgViewProducto.image = Productos.pasteles[indexPath.row].imagen
            
            celdaProductoSeleccionado = celda
            
        }else if(ViewControllerSeleccion.numeroSeleccion == 3){
            
            let celda = tableView.dequeueReusableCell(withIdentifier: "cellProducto") as! CeldaProdutos
            celda.lblNombreProducto.text = Productos.bollos[indexPath.row].nombre
            celda.imgViewProducto.image = Productos.bollos[indexPath.row].imagen
            
            celdaProductoSeleccionado = celda
            
        }else if(ViewControllerSeleccion.numeroSeleccion == 4){
            
            let celda = tableView.dequeueReusableCell(withIdentifier: "cellProducto") as! CeldaProdutos
            celda.lblNombreProducto.text = Productos.gelatinas[indexPath.row].nombre
            celda.imgViewProducto.image = Productos.gelatinas[indexPath.row].imagen
            
            celdaProductoSeleccionado = celda
            
        }else if(ViewControllerSeleccion.numeroSeleccion == 5)
        {
            
            let celda = tableView.dequeueReusableCell(withIdentifier: "cellProducto") as! CeldaProdutos
            celda.lblNombreProducto.text = Productos.flanes[indexPath.row].nombre
            celda.imgViewProducto.image = Productos.flanes[indexPath.row].imagen
            
            celdaProductoSeleccionado = celda
        }
        
        return celdaProductoSeleccionado!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDetalleProducto"
        {
            
            if(ViewControllerProductos.seleccion == 1)
            {
                let destino = segue.destination as? ViewControllerDetalle
                destino?.galleta = Productos.galletas[(tbProductos.indexPathForSelectedRow?.row)!]
            }
            
            if(ViewControllerProductos.seleccion == 2)
            {
                let destino = segue.destination as? ViewControllerDetalle

                destino?.pastel = Productos.pasteles[(tbProductos.indexPathForSelectedRow?.row)!]
            }
            
            if(ViewControllerProductos.seleccion == 3)
            {
                let destino = segue.destination as? ViewControllerDetalle

                destino?.bollo = Productos.bollos[(tbProductos.indexPathForSelectedRow?.row)!]
            }
            
            if(ViewControllerProductos.seleccion == 4)
            {
                let destino = segue.destination as? ViewControllerDetalle

                destino?.gelatina = Productos.gelatinas[(tbProductos.indexPathForSelectedRow?.row)!]
            }
            
            if(ViewControllerProductos.seleccion == 5)
            {
                let destino = segue.destination as? ViewControllerDetalle

                destino?.flan = Productos.flanes[(tbProductos.indexPathForSelectedRow?.row)!]
            }
            
            
        }
        
    }
    
    
    
    
}
