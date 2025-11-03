package com.upc.proyecto.backendskillink.Interface;

import com.upc.proyecto.backendskillink.DTO.ClienteDTO;

import java.util.List;

public interface IClienteService {
    public ClienteDTO findByIdcliente(Long idcliente);
    public ClienteDTO registrar (ClienteDTO clienteDTO);
    public ClienteDTO actualizar (ClienteDTO clienteDTO);
    public void eliminar (Long idcliente);
    public List<ClienteDTO> listar();
    public List<ClienteDTO> listarporestadocliente(Boolean estadocliente);
}
