/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladordatos;

import java.sql.DriverManager;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
	Connection conexion;
	private static final Logger LOG = Logger.getLogger(Conexion.class.getName());
	
	public Connection Conectar() throws IOException{
		
		//FileInputStream fis=new FileInputStream("db.properties");
		InputStream fis = Conexion.class.getResourceAsStream("db.properties");		
		Properties p=new Properties ();
		p.load (fis);

                String usuario= (String) p.get ("usuario"); 
                String contrasena= (String) p.get ("contrasena"); 
                String iphost= (String) p.get ("iphost");
                String puerto= (String) p.get ("puerto");
                String namedb= (String) p.get ("namedb");

            conexion = null;
		try {
		    DriverManager.registerDriver(new org.postgresql.Driver());
		    conexion = DriverManager.getConnection("jdbc:postgresql://"+iphost+":"+puerto+"/"+namedb+"",usuario,contrasena); 
		} catch (SQLException e) {
				LOG.log(Level.SEVERE, "Ocurrió un error en: {0}", e.getMessage());			
		}
		return conexion;
	}
       
}

