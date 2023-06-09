package Entidades;


public class Encargado  extends Persona{
    private String Horario;
    private String Turno;

    public Encargado() {
        super();
        this.Horario = "";
        this.Turno = "";
    }

   /* public Encargado(String Horario, String Turno, int codigo, String Nombres, String ApePat, String ApeMat, String DNI, String Correo, String Telefono, String Contrasena, int Estado, String Direccion, String Distrito, int rol) {
        super(codigo, Nombres, ApePat, ApeMat, DNI, Correo, Telefono, Contrasena, Estado, Direccion, Distrito, rol);
        this.Horario = Horario;
        this.Turno = Turno;
    }*/

    public String getHorario() {
        return Horario;
    }

    public void setHorario(String Horario) {
        this.Horario = Horario;
    }

    public String getTurno() {
        return Turno;
    }

    public void setTurno(String Turno) {
        this.Turno = Turno;
    }
    
    
    
}
