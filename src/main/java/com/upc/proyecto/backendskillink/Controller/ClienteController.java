package com.upc.proyecto.backendskillink.Controller;

import com.upc.proyecto.backendskillink.DTO.ClienteDTO;
import com.upc.proyecto.backendskillink.Service.ClienteService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/skillink/usuario")
@RequiredArgsConstructor
@CrossOrigin(origins = "http://localhost:4200")
public class ClienteController {

    @Autowired
    private final ClienteService clienteService;


    @PostMapping("/registrar")
    public ResponseEntity<ClienteDTO> registrar(@RequestBody ClienteDTO clienteDTO) {
        ClienteDTO nuevoCliente = clienteService.registrar(clienteDTO);
        return ResponseEntity.ok(nuevoCliente);
    }


    @GetMapping("/listar")
    public ResponseEntity<List<ClienteDTO>> listar() {
        return ResponseEntity.ok(clienteService.listar());
    }
    @PutMapping("/actualizar")
    public ResponseEntity<ClienteDTO> actualizar(@Valid @RequestBody ClienteDTO clienteDTO) {
        ClienteDTO clienteActualizado = clienteService.actualizar(clienteDTO);
        return ResponseEntity.ok(clienteActualizado);
    }

    @GetMapping("/buscar/{id}")
    public ResponseEntity<ClienteDTO> buscarPorId(@PathVariable("id") Long idcliente) {
        ClienteDTO cliente = clienteService.findByIdcliente(idcliente);
        return ResponseEntity.ok(cliente);
    }

    @DeleteMapping("/eliminar/{id}")
    public ResponseEntity<Void> eliminar(@PathVariable("id") Long idcliente) {
        clienteService.eliminar(idcliente);
        return ResponseEntity.noContent().build();
    }



    @GetMapping("/listar/{estado}")
    public ResponseEntity<List<ClienteDTO>> listarPorEstado(@PathVariable("estado") Boolean estadocliente) {
        List<ClienteDTO> lista = clienteService.listarporestadocliente(estadocliente);
        return ResponseEntity.ok(lista);
    }
}