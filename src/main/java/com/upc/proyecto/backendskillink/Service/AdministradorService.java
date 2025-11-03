package com.upc.proyecto.backendskillink.Service;

import com.upc.proyecto.backendskillink.DTO.AdministradorDTO;
import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;
import com.upc.proyecto.backendskillink.Entities.Administrador;
import com.upc.proyecto.backendskillink.Entities.Asesoria;
import com.upc.proyecto.backendskillink.Interface.IAdministradorService;
import com.upc.proyecto.backendskillink.Repository.AdministradorRepository;
import com.upc.proyecto.backendskillink.Repository.AsesoriaRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdministradorService implements IAdministradorService {
    @Autowired
    private AdministradorRepository administradorRepository;
    @Autowired
    private ModelMapper modelMapper;

    @Override
    public AdministradorDTO registrar(AdministradorDTO administradorDTO) {
        Administrador administrador = modelMapper.map(administradorDTO, Administrador.class);
        administrador.setIdadministrador(null);
        Administrador savedAdministrador = administradorRepository.save(administrador);
        return modelMapper.map(savedAdministrador, AdministradorDTO.class);
    }

    @Override
    public AdministradorDTO actualizar(AdministradorDTO administradorDTO) {
        Administrador administrador = modelMapper.map(administradorDTO, Administrador.class);
        administrador.setIdadministrador(null);
        Administrador savedAdministrador = administradorRepository.save(administrador);
        return modelMapper.map(savedAdministrador, AdministradorDTO.class);
    }

    @Override
    public void eliminar(Long idadministrador) {
        administradorRepository.deleteById(idadministrador);
    }
}
