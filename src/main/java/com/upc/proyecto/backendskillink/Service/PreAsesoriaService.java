package com.upc.proyecto.backendskillink.Service;

import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;
import com.upc.proyecto.backendskillink.DTO.PreAsesoriaDTO;
import com.upc.proyecto.backendskillink.Entities.Asesoria;
import com.upc.proyecto.backendskillink.Entities.preAsesoria;
import com.upc.proyecto.backendskillink.Interface.IPreAsesoriaService;
import com.upc.proyecto.backendskillink.Repository.AsesoriaRepository;
import com.upc.proyecto.backendskillink.Repository.PreAsesoriaRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class PreAsesoriaService implements IPreAsesoriaService {
    @Autowired
    private PreAsesoriaRepository preasesoriaRepository;
    @Autowired
    private ModelMapper modelMapper;

    @Override
    public PreAsesoriaDTO findByIdasesoria(Long idpreasesoria) {
        return preasesoriaRepository.findById(idpreasesoria)
                .map(preasesoria -> modelMapper.map(preasesoria, PreAsesoriaDTO.class))
                .orElse(null);
    }

    @Override
    public PreAsesoriaDTO registrar(PreAsesoriaDTO preAsesoriaDTO) {
        preAsesoria preasesoria = modelMapper.map(preAsesoriaDTO, preAsesoria.class);
        preasesoria.setIdpreasesoria(null);
        preAsesoria savedPreAsesoria = preasesoriaRepository.save(preasesoria);
        return modelMapper.map(savedPreAsesoria, PreAsesoriaDTO.class);
    }

    @Override
    public PreAsesoriaDTO actualizar(PreAsesoriaDTO preAsesoriaDTO) {
        preAsesoria preasesoria = modelMapper.map(preAsesoriaDTO, preAsesoria.class);
        preasesoria.setIdpreasesoria(null);
        preAsesoria savedPreAsesoria = preasesoriaRepository.save(preasesoria);
        return modelMapper.map(savedPreAsesoria, PreAsesoriaDTO.class);
    }

    @Override
    public void eliminar(Long idpreasesoria) {
        preasesoriaRepository.deleteById(idpreasesoria);
    }

    @Override
    public List<PreAsesoriaDTO> listar() {
        return preasesoriaRepository.findAll().stream()
                .map(preasesoria -> modelMapper.map(preasesoria, PreAsesoriaDTO.class))
                .toList();
    }

    @Override
    public List<PreAsesoriaDTO> listarporfechasesoria(LocalDate fechapreasesoria) {
        List<preAsesoria> preasesorias = preasesoriaRepository.findByFechapreasesoria(fechapreasesoria);
        return preasesorias.stream()
                .map(preasesoria -> modelMapper.map(preasesoria, PreAsesoriaDTO.class))
                .collect(Collectors.toList());
    }
}
