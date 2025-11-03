package com.upc.proyecto.backendskillink.Interface;

import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;
import com.upc.proyecto.backendskillink.DTO.PreAsesoriaDTO;

import java.time.LocalDate;
import java.util.List;

public interface IPreAsesoriaService {
    public PreAsesoriaDTO findByIdasesoria(Long idpreasesoria);
    public PreAsesoriaDTO registrar (PreAsesoriaDTO preAsesoriaDTO);
    public PreAsesoriaDTO actualizar (PreAsesoriaDTO preAsesoriaDTO);
    public void eliminar (Long idpreasesoria);
    public List<PreAsesoriaDTO> listar();
    public List<PreAsesoriaDTO> listarporfechasesoria(LocalDate fechapreasesoria);
}
