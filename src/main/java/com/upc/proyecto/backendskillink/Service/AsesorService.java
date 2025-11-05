package com.upc.proyecto.backendskillink.Service;

import com.upc.proyecto.backendskillink.DTO.AsesorDTO;
import com.upc.proyecto.backendskillink.Entities.Asesor;
import com.upc.proyecto.backendskillink.Interface.IAsesorService;
import com.upc.proyecto.backendskillink.Repository.AsesorRepository;
import com.upc.proyecto.backendskillink.security.entities.User;
import com.upc.proyecto.backendskillink.security.services.UserService;
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

    @Autowired
    private UserService userService; // Para registrar usuario


    @Override
    public AsesorDTO findByIdasesor(Long idasesor) {
        return asesorRepository.findById(idasesor)
                .map(asesor -> modelMapper.map(asesor, AsesorDTO.class))
                .orElse(null);
    }


    @Override
    public AsesorDTO registrar(AsesorDTO asesorDTO) {
        // Crear asesor
        Asesor asesor = new Asesor();
        asesor.setNombreasesor(asesorDTO.getNombreasesor());
        asesor.setCorreoasesor(asesorDTO.getCorreoasesor());
        asesor.setTelefonoasesor(asesorDTO.getTelefonoasesor());
        asesor.setDireccionasesor(asesorDTO.getDireccionasesor());
        asesor.setEstadoasesor(asesorDTO.getEstadoasesor());
        asesor.setEspecialidadasesor(asesorDTO.getEspecialidadasesor());
        asesor.setPassword(asesorDTO.getPassword()); // texto plano para pruebas

        Asesor savedAsesor = asesorRepository.save(asesor);

        // Crear usuario en sistema de seguridad
        User user = new User();
        user.setUsername(asesorDTO.getNombreasesor()); // nombre como username
        user.setPassword(asesorDTO.getPassword()); // texto plano
        userService.save(user);

        return modelMapper.map(savedAsesor, AsesorDTO.class);
    }


    @Override
    public AsesorDTO actualizar(AsesorDTO asesorDTO) {
        Asesor asesor = modelMapper.map(asesorDTO, Asesor.class);
        Asesor updatedAsesor = asesorRepository.save(asesor);
        return modelMapper.map(updatedAsesor, AsesorDTO.class);
    }

    @Override
    public void eliminarasesor(Long idasesor) {
        asesorRepository.deleteById(idasesor);
    }

    @Override
    public List<AsesorDTO> listarasesor() {
        return asesorRepository.findAll()
                .stream()
                .map(asesor -> modelMapper.map(asesor, AsesorDTO.class))
                .collect(Collectors.toList());
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
    public Asesor findByNombre(String nombre) {
        return asesorRepository.findByNombreasesor(nombre).orElse(null);
    }
}