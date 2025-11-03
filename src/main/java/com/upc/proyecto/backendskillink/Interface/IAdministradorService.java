package com.upc.proyecto.backendskillink.Interface;

import com.upc.proyecto.backendskillink.DTO.AdministradorDTO;
import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;

public interface IAdministradorService {
    public AdministradorDTO registrar (AdministradorDTO administradorDTO);
    public AdministradorDTO actualizar (AdministradorDTO administradorDTO);
    public void eliminar (Long idadministrador);
}
