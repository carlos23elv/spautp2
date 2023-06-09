package Modelo;

import Utils.Conexion;
import Entidades.Servicio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ServicioDAO implements BaseDAO<Servicio>{
    Conexion cn= new Conexion();
    Connection conn; 
    PreparedStatement pstm = null;
    ResultSet rs = null;

    @Override
    public List<Servicio> listar() {
        ArrayList<Servicio> listaServicios = new ArrayList<>();
        String sql ="select * from servicio";
        try 
        {
            conn = cn.getConnection();
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
            	Servicio servicio = new Servicio();
                servicio.setIdservicio(rs.getInt("idservicio"));
                servicio.setNomserv(rs.getString("nomserv"));
                servicio.setDescripcion(rs.getString("descripcion"));
                servicio.setTurno(rs.getString("turno"));
                servicio.setPrecio(rs.getDouble("precio"));
                servicio.setIdtipo(rs.getInt("idtipo"));
                servicio.setImagen(rs.getString("imagen"));
                servicio.setEstadoserv(rs.getInt("estadoserv"));
                servicio.setDuracion(rs.getString("duracion"));

                listaServicios.add(servicio);
            }
        } catch (Exception e){	
            System.out.println(e.toString());
        }        
        return listaServicios;
    }

    @Override
    public int insertar(Servicio nuevo) {
        int r=0;
        String sql = "INSERT INTO servicio(nomserv, descripcion, turno, precio, idtipo, imagen, estadoserv, duracion) VALUES (?,?,?,?,?,?,?,?)";
        try {
            conn = cn.getConnection();
            pstm = conn.prepareStatement(sql);
            
            pstm.setString(1, nuevo.getNomserv());
            pstm.setString(2, nuevo.getDescripcion());
            pstm.setString(3, nuevo.getTurno());
            pstm.setDouble(4, nuevo.getPrecio());
            pstm.setInt(5, nuevo.getIdtipo());
            pstm.setString(6, nuevo.getImagen());
            pstm.setInt(7, 1);
            pstm.setString(8, nuevo.getDuracion());
         
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
    public int modificar(Servicio modificado) {
        int r=0;
        int mod = modificado.getIdservicio();
        
        String sql = "UPDATE servicio SET nomserv=?,descripcion=?,turno=?,precio=?,idtipo=?,imagen=?,estadoserv=?,duracion=? WHERE idservicio="+mod;
        try {
            conn = cn.getConnection();
            pstm = conn.prepareStatement(sql);
            
            pstm.setString(1, modificado.getNomserv());
            pstm.setString(2, modificado.getDescripcion());
            pstm.setString(3, modificado.getTurno());
            pstm.setDouble(4, modificado.getPrecio());
            pstm.setInt(5, modificado.getIdtipo());
            pstm.setString(6, modificado.getImagen());
            pstm.setInt(7, 1);
            pstm.setString(8, modificado.getDuracion());
         
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
    public int eliminar(Servicio eliminado) {
        int r=0;
        int delete = eliminado.getIdservicio();
        String sql="UPDATE servicio SET estadoserv=? WHERE idservicio="+delete;        
        
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
