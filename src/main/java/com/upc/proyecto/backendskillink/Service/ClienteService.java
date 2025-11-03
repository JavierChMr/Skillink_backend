package com.upc.proyecto.backendskillink.Service;

import com.upc.proyecto.backendskillink.DTO.ClienteDTO;
import com.upc.proyecto.backendskillink.Entities.Cliente;
import com.upc.proyecto.backendskillink.Interface.IClienteService;
import com.upc.proyecto.backendskillink.Repository.ClienteRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ClienteService implements IClienteService {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private ClienteRepository clienteRepository;

    @Override
    public ClienteDTO findByIdcliente(Long idcliente) {
        return clienteRepository.findById(idcliente)
                .map(cliente -> modelMapper.map(cliente, ClienteDTO.class))
                .orElse(null);
    }

    @Override
    public ClienteDTO registrar(ClienteDTO clienteDTO) {
        Cliente cliente = modelMapper.map(clienteDTO, Cliente.class);
        cliente.setIdcliente(null);
        Cliente savedCliente = clienteRepository.save(cliente);
        return modelMapper.map(savedCliente, ClienteDTO.class);
    }

    @Override
    public ClienteDTO actualizar(ClienteDTO clienteDTO) {
        Cliente cliente = modelMapper.map(clienteDTO, Cliente.class);
        Cliente UpdateCliente = clienteRepository.save(cliente);
        return modelMapper.map(UpdateCliente, ClienteDTO.class);
    }

    @Override
    public void eliminar(Long idcliente) {
        clienteRepository.deleteById(idcliente);
    }

    @Override
    public List<ClienteDTO> listar() {
        return clienteRepository.findAll().stream()
                .map(cliente -> modelMapper.map(cliente, ClienteDTO.class))
                .toList();
    }

    @Override
    public List<ClienteDTO> listarporestadocliente(Boolean estadocliente) {
        List<Cliente> clientes = clienteRepository.findByEstadocliente(estadocliente);
        return clientes.stream()
                .map(c -> modelMapper.map(c, ClienteDTO.class))
                .toList();
    }
}
