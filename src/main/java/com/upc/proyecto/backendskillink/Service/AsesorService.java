package com.upc.proyecto.backendskillink.Service;

import com.upc.proyecto.backendskillink.DTO.AsesorDTO;
import com.upc.proyecto.backendskillink.Entities.Asesor;
import com.upc.proyecto.backendskillink.Interface.IAsesorService;
import com.upc.proyecto.backendskillink.Repository.AsesorRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class AsesorService implements IAsesorService {
    @Autowired
    private AsesorRepository asesorRepository;
    @Autowired
    private ModelMapper modelMapper;

    @Override
    public AsesorDTO findByIdasesor(Long idasesor) {
        return asesorRepository.findById(idasesor)
                .map(asesor -> modelMapper.map(asesor, AsesorDTO.class))
                .orElse(null);
    }

    @Override
    public AsesorDTO registrar(AsesorDTO asesorDTO) {
        Asesor asesor = modelMapper.map(asesorDTO, Asesor.class);
        asesor.setIdasesor(null);
        Asesor savedAsesor = asesorRepository.save(asesor);
        return modelMapper.map(savedAsesor, AsesorDTO.class);
    }

    @Override
    public AsesorDTO actualizar(AsesorDTO asesorDTO) {
        Asesor asesor = modelMapper.map(asesorDTO, Asesor.class);
        Asesor UpdateAsesor = asesorRepository.save(asesor);
        return modelMapper.map(UpdateAsesor, AsesorDTO.class);
    }

    @Override
    public void eliminar(Long idasesor) {
        asesorRepository.deleteById(idasesor);

    }

    @Override
    public List<AsesorDTO> listar() {
        return asesorRepository.findAll().stream()
                .map(asesor -> modelMapper.map(asesor, AsesorDTO.class))
                .toList();
    }

    @Override
    public List<AsesorDTO> listarporestadoasesor(Boolean estadoasesor) {
        return asesorRepository.findByEstadoasesor(estadoasesor)
                .stream()
                .map(asesor -> modelMapper.map(asesor, AsesorDTO.class))
                .collect(Collectors.toList());
    }

    @Override
    public List<AsesorDTO> listarporespecialidadasesor(String especialidadasesor) {
        return asesorRepository.findByEspecialidadasesor(especialidadasesor)
                .stream()
                .map(asesor -> modelMapper.map(asesor, AsesorDTO.class))
                .collect(Collectors.toList());
    }

    @Override
    public AsesorDTO findByEspecialidadasesor(String especialidadasesor) {
        return asesorRepository.findFirstByEspecialidadasesor(especialidadasesor)
                .map(asesor -> modelMapper.map(asesor, AsesorDTO.class))
                .orElse(null);
    }
}
