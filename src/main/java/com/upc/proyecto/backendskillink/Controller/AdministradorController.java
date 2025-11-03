package com.upc.proyecto.backendskillink.Controller;

import com.upc.proyecto.backendskillink.DTO.AdministradorDTO;
import com.upc.proyecto.backendskillink.Service.AdministradorService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/skillink/administrador")
public class AdministradorController {

    @Autowired
    private AdministradorService administradorService;

    @PostMapping("/registrar")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<AdministradorDTO> registrar(@Valid @RequestBody AdministradorDTO administradorDTO) {
        AdministradorDTO nuevoAdministrador = administradorService.registrar(administradorDTO);
        return ResponseEntity.ok(nuevoAdministrador);
    }


    @PutMapping("/actualizar")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<AdministradorDTO> actualizar(@Valid @RequestBody AdministradorDTO administradorDTO) {
        AdministradorDTO administradorActualizado = administradorService.actualizar(administradorDTO);
        return ResponseEntity.ok(administradorActualizado);
    }

    @DeleteMapping("/eliminar/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Void> eliminar(@PathVariable("id") Long idadministrador) {
        administradorService.eliminar(idadministrador);
        return ResponseEntity.noContent().build();
    }
}
