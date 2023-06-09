package Modelo;


import Utils.Conexion;
import Entidades.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO implements BaseDAO<Usuario>{
    Conexion cn = new Conexion();
    Connection conn= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Usuario validar(String correo, String contrasena) {
        Usuario user = new Usuario();        
        String sql = "SELECT * FROM persona WHERE correo=? AND contrasena=?";
        try {
            conn = cn.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();
            while (rs.next()) {
                user.setCodigo(rs.getInt("codigo"));
                user.setCorreo(rs.getString("correo"));
                user.setContrasena(rs.getString("contrasena"));
                user.setNombres(rs.getString("nombres"));
                user.setApepat(rs.getString("apelpat"));
                user.setApemat(rs.getString("apelmat"));
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return user;
    }
    
    
    @Override
    public List<Usuario> listar() {
        ArrayList<Usuario>list=new ArrayList<>();
        String sql="select * from persona";
        try {
            conn=cn.getConnection();
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Usuario user=new Usuario();
                user.setCodigo(rs.getInt("codigo"));
                user.setNombres(rs.getString("nombres"));
                user.setApepat(rs.getString("apelpat"));
                user.setApemat(rs.getString("apelmat"));
                user.setDni(rs.getString("dni"));
                user.setCorreo(rs.getString("correo"));
                user.setTelefono(rs.getString("telefono"));
                user.setContrasena(rs.getString("contrasena"));
                user.setTurno(rs.getString("turno"));
                user.setHorario(rs.getString("horario"));
                user.setEstado(rs.getInt("estado"));
                user.setRol(rs.getInt("idrol"));
                user.setIdespecialidad(rs.getInt("idespecialidad"));
                user.setDireccion(rs.getString("direccion"));
                user.setDistrito(rs.getString("distrito"));
                list.add(user);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public int insertar(Usuario nuevo) {
        int r=0;
        String sql = "INSERT INTO persona(nombres, apelpat, apelmat, dni, correo, telefono, contrasena, turno, horario, estado, idrol, idespecialidad, direccion, distrito) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = cn.getConnection();
            ps = conn.prepareStatement(sql);
            
            ps.setString(1, nuevo.getNombres());
            ps.setString(2, nuevo.getApepat());
            ps.setString(3, nuevo.getApemat());
            ps.setString(4, nuevo.getDni());
            ps.setString(5, nuevo.getCorreo());
            ps.setString(6, nuevo.getTelefono());
            ps.setString(7, nuevo.getContrasena());
            ps.setString(8, nuevo.getTurno());
            ps.setString(9, nuevo.getHorario());
            ps.setInt(10, nuevo.getEstado());
            ps.setInt(11, nuevo.getRol());
            ps.setInt(12, nuevo.getIdespecialidad());
            ps.setString(13, nuevo.getDireccion());
            ps.setString(14, nuevo.getDistrito());
         
            r=ps.executeUpdate();
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
    public int modificar(Usuario modificado) {
        int r=0;
        int mod = modificado.getCodigo();
        String sql="UPDATE persona SET nombres=?,apelpat=?,apelmat=?,dni=?,correo=?,telefono=?,contrasena=?,turno=?,horario=?,estado=?,idrol=?,idespecialidad=?,direccion=?,distrito=? WHERE codigo="+mod;        
        
        try {
            conn = cn.getConnection();
            ps = conn.prepareStatement(sql);            
            ps.setString(1,modificado.getNombres());
            ps.setString(2,modificado.getApepat());
            ps.setString(3,modificado.getApemat());
            ps.setString(4,modificado.getDni());
            ps.setString(5,modificado.getCorreo());
            ps.setString(6,modificado.getTelefono());
            ps.setString(7,modificado.getContrasena());
            ps.setString(8,modificado.getTurno());
            ps.setString(9,modificado.getHorario());
            ps.setInt(10,modificado.getEstado());
            ps.setInt(11,modificado.getRol());
            ps.setInt(12,modificado.getIdespecialidad());
            ps.setString(13,modificado.getDireccion());
            ps.setString(14,modificado.getDistrito());
            r=ps.executeUpdate();    
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
    public int eliminar(Usuario eliminado) {
        int r=0;
        int delete = eliminado.getCodigo();
        String sql="UPDATE persona SET estado=? WHERE codigo="+delete;        
        
        try {
            conn = cn.getConnection();
            ps = conn.prepareStatement(sql);  
            ps.setInt(1,0);
            r=ps.executeUpdate();    
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
