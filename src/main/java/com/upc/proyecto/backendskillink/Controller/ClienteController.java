package com.upc.proyecto.backendskillink.Controller;

import com.upc.proyecto.backendskillink.DTO.ClienteDTO;
import com.upc.proyecto.backendskillink.Service.ClienteService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/skillink/usuario")
public class ClienteController {
    @Autowired
    private ClienteService clienteService;

    @PostMapping("/registrar")
    @PreAuthorize("hasRole('USUARIO')")
    public ResponseEntity<ClienteDTO> registrar(@Valid @RequestBody ClienteDTO clienteDTO) {
        ClienteDTO nuevoCliente = clienteService.registrar(clienteDTO);
        return ResponseEntity.ok(nuevoCliente);
    }


    @PutMapping("/actualizar")
    @PreAuthorize("hasRole('USUARIO')")
    public ResponseEntity<ClienteDTO> actualizar(@Valid @RequestBody ClienteDTO clienteDTO) {
        ClienteDTO clienteActualizado = clienteService.actualizar(clienteDTO);
        return ResponseEntity.ok(clienteActualizado);
    }

    @GetMapping("/buscar/{id}")
    @PreAuthorize("hasRole('USUARIO')")
    public ResponseEntity<ClienteDTO> buscarPorId(@PathVariable("id") Long idcliente) {
        ClienteDTO cliente = clienteService.findByIdcliente(idcliente);
        return ResponseEntity.ok(cliente);
    }


    @DeleteMapping("/eliminar/{id}")
    @PreAuthorize("hasRole('USUARIO')")
    public ResponseEntity<Void> eliminar(@PathVariable("id") Long idcliente) {
        clienteService.eliminar(idcliente);
        return ResponseEntity.noContent().build();
    }


    @GetMapping("/listar")
    @PreAuthorize("hasRole('USUARIO')")
    public ResponseEntity<List<ClienteDTO>> listar() {
        List<ClienteDTO> lista = clienteService.listar();
        return ResponseEntity.ok(lista);
    }


    @GetMapping("/listar/{estado}")
    @PreAuthorize("hasRole('USUARIO')")
    public ResponseEntity<List<ClienteDTO>> listarPorEstado(@PathVariable("estado") Boolean estadocliente) {
        List<ClienteDTO> lista = clienteService.listarporestadocliente(estadocliente);
        return ResponseEntity.ok(lista);
    }

}

