package com.upc.proyecto.backendskillink.Interface;

import com.upc.proyecto.backendskillink.DTO.AdministradorDTO;
import com.upc.proyecto.backendskillink.DTO.AsesorDTO;
import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;
import com.upc.proyecto.backendskillink.DTO.ClienteDTO;

import java.time.LocalDate;
import java.util.List;

public interface IAdministradorService {
    public AdministradorDTO registrar (AdministradorDTO administradorDTO);
    public AdministradorDTO actualizar (AdministradorDTO administradorDTO);

//    //asesoria
//    public void eliminarasesoria (Long idasesoria);
//    public List<AsesoriaDTO> listarasesoria();
//    public List<AsesoriaDTO> listarporfechasesoria(LocalDate fechasesoria);
//    public AsesoriaDTO findByIdasesoria(Long idasesoria);
//    //asesor
//    public void eliminarasesor(Long idasesor);
//    public List<AsesorDTO> listarasesor();
//    public List<AsesorDTO> listarporestadoasesor(Boolean estadoasesor);
//    public List<AsesorDTO> listarporespecialidadasesor(String especialidadasesor);
//    public AsesorDTO findByEspecialidadasesor(String especialidadasesor);
//    public AsesorDTO findByIdasesor(Long idasesor);
//    //cliente
//    public void eliminarcliente (Long idcliente);
//    public List<ClienteDTO> listarcliente();
//    public List<ClienteDTO> listarporestadocliente(Boolean estadocliente);
//    public ClienteDTO findByIdcliente(Long idcliente);
}
