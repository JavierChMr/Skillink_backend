package com.upc.proyecto.backendskillink.Service;

import com.upc.proyecto.backendskillink.DTO.VerAsesoriaDTO;
import com.upc.proyecto.backendskillink.Interface.IVerAsesoriaService;
import com.upc.proyecto.backendskillink.Repository.VerAsesoriaRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VerAsesoriaService implements IVerAsesoriaService {
    @Autowired
    private VerAsesoriaRepository verAsesoriaRepository;

    @Autowired
    private ModelMapper modelMapper;


    @Override
    public List<VerAsesoriaDTO> listarVerAsesorias() {
        return verAsesoriaRepository.findAll().stream()
                .map(verasesoria -> modelMapper.map(verasesoria, VerAsesoriaDTO.class))
                .toList();
    }

    @Override
    public VerAsesoriaDTO obtenerVerAsesoriaPorId(Long idverasesoria) {
        return verAsesoriaRepository.findById(idverasesoria)
                .map(verasesoriaid -> modelMapper.map(verasesoriaid, VerAsesoriaDTO.class))
                .orElse(null);
    }
}
