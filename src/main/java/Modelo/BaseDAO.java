package Modelo;

import java.util.List;

public interface BaseDAO <T>
{
    public abstract List<T> listar();			
    public abstract int insertar(T nuevo);                      
    public abstract int modificar(T modificado);                
    public abstract int eliminar(T eliminado);
}
