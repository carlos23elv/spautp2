package Modelo;

import Utils.Conexion;
import Entidades.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ClienteDAO implements BaseDAO<Cliente>{
    Conexion cn= new Conexion();
    Connection conn; 
    PreparedStatement pstm = null;
    ResultSet rs = null;

    @Override
    public List<Cliente> listar() {
        ArrayList<Cliente> listaClientes = new ArrayList<>();
        String sql ="select * from persona";
        try 
        {
            conn = cn.getConnection();
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
            	Cliente cliente = new Cliente();
                cliente.setCodigo(rs.getInt("codigo"));
                cliente.setNombres(rs.getString("nombres"));
                cliente.setApepat(rs.getString("apelpat"));
                cliente.setApemat(rs.getString("apelmat"));
                cliente.setDni(rs.getString("dni"));
                cliente.setCorreo(rs.getString("correo"));
                cliente.setTelefono(rs.getString("telefono"));
                cliente.setContrasena(rs.getString("contrasena"));
                cliente.setFNacimiento(rs.getDate("fnacimiento"));
                cliente.setEstado(rs.getInt("estado"));
                cliente.setRol(rs.getInt("idrol"));
                cliente.setDireccion(rs.getString("direccion"));
                cliente.setDistrito(rs.getString("distrito"));

                listaClientes.add(cliente);
            }
        } catch (Exception e){	
            System.out.println(e.toString());
        }        
        return listaClientes;
    }

    @Override
    public int insertar(Cliente nuevo) {
        int r=0;
        String sql = "INSERT INTO persona(nombres, apelpat, apelmat, dni, correo, telefono, contrasena, fnacimiento, estado, idrol, direccion, distrito) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = cn.getConnection();
            pstm = conn.prepareStatement(sql);
            
            pstm.setString(1, nuevo.getNombres());
            pstm.setString(2, nuevo.getApepat());
            pstm.setString(3, nuevo.getApemat());
            pstm.setString(4, nuevo.getDni());
            pstm.setString(5, nuevo.getCorreo());
            pstm.setString(6, nuevo.getTelefono());
            pstm.setString(7, nuevo.getContrasena());
            pstm.setDate(8, null);
            pstm.setInt(9, 1);
            pstm.setInt(10, 4);
            pstm.setString(11, nuevo.getDireccion());
            pstm.setString(12, nuevo.getDistrito());
         
            r=pstm.executeUpdate();
            if(r==1){
                return 1;
            }
            else{
                return 0;
            }
        } catch (Exception e) {
        }
        return r;
    }

    @Override
    public int modificar(Cliente modificado) {
        int r=0;
        int mod = modificado.getCodigo();
        
        String sql = "UPDATE persona SET nombres=?,apelpat=?,apelmat=?,dni=?,correo=?,telefono=?,contrasena=?,fnacimiento=?,estado=?,idrol=?,direccion=?,distrito=? WHERE codigo="+mod;
        try {
            conn = cn.getConnection();
            pstm = conn.prepareStatement(sql);
            
            pstm.setString(1, modificado.getNombres());
            pstm.setString(2, modificado.getApepat());
            pstm.setString(3, modificado.getApemat());
            pstm.setString(4, modificado.getDni());
            pstm.setString(5, modificado.getCorreo());
            pstm.setString(6, modificado.getTelefono());
            pstm.setString(7, modificado.getContrasena());
            pstm.setDate(8, null);
            pstm.setInt(9, 1);
            pstm.setInt(10, 4);
            pstm.setString(11, modificado.getDireccion());
            pstm.setString(12, modificado.getDistrito());
         
            r=pstm.executeUpdate();
            if(r==1){
                return 1;
            }
            else{
                return 0;
            }
        } catch (Exception e) {
        }
        return r;
    }

    @Override
    public int eliminar(Cliente eliminado) {
        int r=0;
        int delete = eliminado.getCodigo();
        String sql="UPDATE persona SET estado=? WHERE codigo="+delete;        
        
        try {
            conn = cn.getConnection();
            pstm = conn.prepareStatement(sql);  
            pstm.setInt(1,0);
            r=pstm.executeUpdate();    
            if(r==1){
                return 1;
            }
            else{
                return 0;
            }
        } catch (Exception e) {
        }  
        return r;
    }
    
}
