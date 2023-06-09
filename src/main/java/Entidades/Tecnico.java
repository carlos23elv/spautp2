package Entidades;


public class Tecnico extends Persona{
    private String Especialidad;
    private String Horario;
    private String Turno;

    public Tecnico() {
        super();
        this.Especialidad = "";
        this.Horario = "";
        this.Turno = "";
    }
/*
    public Tecnico(String Especialidad, String Horario, String Turno, int codigo, String Nombres, String ApePat, String ApeMat, String DNI, String Correo, String Telefono, String Contrasena, int Estado, String Direccion, String Distrito, int rol) {
        super(codigo, Nombres, ApePat, ApeMat, DNI, Correo, Telefono, Contrasena, Estado, Direccion, Distrito, rol);
        this.Especialidad = Especialidad;
        this.Horario = Horario;
        this.Turno = Turno;
    }
*/
    public String getEspecialidad() {
        return Especialidad;
    }

    public void setEspecialidad(String Especialidad) {
        this.Especialidad = Especialidad;
    }

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
