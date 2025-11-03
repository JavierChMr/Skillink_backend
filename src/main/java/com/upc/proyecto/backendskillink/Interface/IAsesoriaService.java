package com.upc.proyecto.backendskillink.Interface;

import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;

import java.time.LocalDate;
import java.util.List;

public interface IAsesoriaService {
    public AsesoriaDTO findByIdasesoria(Long idasesoria);
    public AsesoriaDTO registrar (AsesoriaDTO asesoriaDTO);
    public AsesoriaDTO actualizar (AsesoriaDTO asesoriaDTO);
    public void eliminar (Long idasesoria);
    public List<AsesoriaDTO> listar();
    public List<AsesoriaDTO> listarporfechasesoria(LocalDate fechasesoria);
}
