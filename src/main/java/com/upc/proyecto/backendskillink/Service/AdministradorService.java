package com.upc.proyecto.backendskillink.Service;

import com.upc.proyecto.backendskillink.DTO.AdministradorDTO;
import com.upc.proyecto.backendskillink.DTO.AsesorDTO;
import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;
import com.upc.proyecto.backendskillink.DTO.ClienteDTO;
import com.upc.proyecto.backendskillink.Entities.Administrador;
import com.upc.proyecto.backendskillink.Entities.Asesor;
import com.upc.proyecto.backendskillink.Entities.Asesoria;
import com.upc.proyecto.backendskillink.Interface.IAdministradorService;
import com.upc.proyecto.backendskillink.Repository.AdministradorRepository;
import com.upc.proyecto.backendskillink.Repository.AsesorRepository;
import com.upc.proyecto.backendskillink.Repository.AsesoriaRepository;
import com.upc.proyecto.backendskillink.Repository.ClienteRepository;
import com.upc.proyecto.backendskillink.security.entities.User;
import com.upc.proyecto.backendskillink.security.services.UserService;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AdministradorService implements IAdministradorService {
    private final AdministradorRepository administradorRepository;
    private final AsesorRepository asesorRepository;
    private final ClienteRepository clienteRepository;
    private final ModelMapper modelMapper;
    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;


    @Override
    public AdministradorDTO registrar(AdministradorDTO dto) {
      // Encriptar una sola vez
      String hashedPassword = passwordEncoder.encode(dto.getPassword());

      Administrador administrador = new Administrador();
      administrador.setNombreadmin(dto.getNombreadmin());
      administrador.setCorreoadmin(dto.getCorreoadmin());
      administrador.setTelefonoadmin(dto.getTelefonoadmin());
      administrador.setDireccionadmin(dto.getDireccionadmin());
      administrador.setPassword(hashedPassword);  // ✔ guardar ENCRIPTADO

      Administrador savedAdmin = administradorRepository.save(administrador);

      User user = new User();
      user.setUsername(dto.getNombreadmin());
      user.setPassword(hashedPassword);  // ✔ misma contraseña encriptada

      userService.save(user);

      Long userId = userService.findByUsername(dto.getNombreadmin()).getId();
      Long roleId = userService.findRoleIdByName("ADMIN");

      userService.insertUserRole(userId, roleId);

      return modelMapper.map(savedAdmin, AdministradorDTO.class);
    }

    @Override
    public AdministradorDTO actualizar(AdministradorDTO administradorDTO) {
        Administrador administrador = modelMapper.map(administradorDTO, Administrador.class);
        administrador.setIdadministrador(null);
        Administrador savedAdministrador = administradorRepository.save(administrador);
        return modelMapper.map(savedAdministrador, AdministradorDTO.class);
    }


    public Administrador findByNombre(String nombre) {
        return administradorRepository.findByNombreadmin(nombre).orElse(null);
    }




    // ============================
//   ACTUALIZAR ESTADO ASESOR
// ============================
    public AsesorDTO actualizarEstadoAsesor(Long idasesor, Boolean nuevoEstado) {

        Asesor asesor = asesorRepository.findById(idasesor)
                .orElseThrow(() -> new RuntimeException("Asesor no encontrado"));

        asesor.setEstadoasesor(nuevoEstado);

        asesorRepository.save(asesor);

        return modelMapper.map(asesor, AsesorDTO.class);
    }

    // ============================
//   ACTUALIZAR ESTADO CLIENTE
// ============================
    public ClienteDTO actualizarEstadoCliente(Long idcliente, Boolean nuevoEstado) {

        var cliente = clienteRepository.findById(idcliente)
                .orElseThrow(() -> new RuntimeException("Cliente no encontrado"));

        cliente.setEstadocliente(nuevoEstado);

        clienteRepository.save(cliente);

        return modelMapper.map(cliente, ClienteDTO.class);
    }



//    @Override
//    public void eliminarasesoria(Long idasesoria) {
//        asesoriaRepository.deleteById(idasesoria);
//    }
//
//    @Override
//    public List<AsesoriaDTO> listarasesoria() {
//        return asesoriaRepository.findAll()
//                .stream()
//                .map(a -> modelMapper.map(a, AsesoriaDTO.class))
//                .toList();
//    }
//
//    @Override
//    public List<AsesoriaDTO> listarporfechasesoria(LocalDate fechasesoria) {
//        return asesoriaRepository.findByFechasesoria(fechasesoria)
//                .stream()
//                .map(a -> modelMapper.map(a, AsesoriaDTO.class))
//                .toList();
//    }
//
//    @Override
//    public AsesoriaDTO findByIdasesoria(Long idasesoria) {
//        return asesoriaRepository.findById(idasesoria)
//                .map(a -> modelMapper.map(a, AsesoriaDTO.class))
//                .orElse(null);
//    }
//
//    // ========== ASESORES ==========
//    @Override
//    public void eliminarasesor(Long idasesor) {
//        asesorRepository.deleteById(idasesor);
//    }
//
//    @Override
//    public List<AsesorDTO> listarasesor() {
//        return asesorRepository.findAll()
//                .stream()
//                .map(a -> modelMapper.map(a, AsesorDTO.class))
//                .toList();
//    }
//
//    @Override
//    public List<AsesorDTO> listarporestadoasesor(Boolean estadoasesor) {
//        return asesorRepository.findByEstadoasesor(estadoasesor)
//                .stream()
//                .map(a -> modelMapper.map(a, AsesorDTO.class))
//                .toList();
//    }
//
//    @Override
//    public List<AsesorDTO> listarporespecialidadasesor(String especialidadasesor) {
//        return asesorRepository.findByEspecialidadasesor(especialidadasesor)
//                .stream()
//                .map(a -> modelMapper.map(a, AsesorDTO.class))
//                .toList();
//    }
//
//    @Override
//    public AsesorDTO findByIdasesor(Long idasesor) {
//        return asesorRepository.findById(idasesor)
//                .map(a -> modelMapper.map(a, AsesorDTO.class))
//                .orElse(null);
//    }
//
//    // ========== CLIENTES ==========
//    @Override
//    public void eliminarcliente(Long idcliente) {
//        clienteRepository.deleteById(idcliente);
//    }
//
//    @Override
//    public List<ClienteDTO> listarcliente() {
//        return clienteRepository.findAll()
//                .stream()
//                .map(c -> modelMapper.map(c, ClienteDTO.class))
//                .toList();
//    }
//
//    @Override
//    public List<ClienteDTO> listarporestadocliente(Boolean estadocliente) {
//        return clienteRepository.findByEstadocliente(estadocliente)
//                .stream()
//                .map(c -> modelMapper.map(c, ClienteDTO.class))
//                .toList();
//    }
//
//    @Override
//    public ClienteDTO findByIdcliente(Long idcliente) {
//        return clienteRepository.findById(idcliente)
//                .map(c -> modelMapper.map(c, ClienteDTO.class))
//                .orElse(null);
//    }





}
