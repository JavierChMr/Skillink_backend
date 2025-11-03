package com.upc.proyecto.backendskillink.Controller;

import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;
import com.upc.proyecto.backendskillink.Service.AsesoriaService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/api/skillink/asesoria")
public class AsesoriaController {
    @Autowired
    private AsesoriaService asesoriaService;

// negro tarado
    @PostMapping("/registrar")
    @PreAuthorize("hasRole('ASESOR')")
    public ResponseEntity<AsesoriaDTO> registrar(@Valid @RequestBody AsesoriaDTO asesoriaDTO) {
        AsesoriaDTO nuevaAsesoria = asesoriaService.registrar(asesoriaDTO);
        return ResponseEntity.ok(nuevaAsesoria);
    }


    @PutMapping("/actualizar")
    @PreAuthorize("hasRole('ASESOR')")
    public ResponseEntity<AsesoriaDTO> actualizar(@Valid @RequestBody AsesoriaDTO asesoriaDTO) {
        AsesoriaDTO asesoriaActualizada = asesoriaService.actualizar(asesoriaDTO);
        return ResponseEntity.ok(asesoriaActualizada);
    }


    @GetMapping("/buscar/{id}")
    @PreAuthorize("hasRole('ASESOR')")
    public ResponseEntity<AsesoriaDTO> buscarPorId(@PathVariable("id") Long idasesoria) {
        AsesoriaDTO asesoria = asesoriaService.findByIdasesoria(idasesoria);
        return ResponseEntity.ok(asesoria);
    }


    @DeleteMapping("/eliminar/{id}")
    @PreAuthorize("hasRole('ASESOR')")
    public ResponseEntity<Void> eliminar(@PathVariable("id") Long idasesoria) {
        asesoriaService.eliminar(idasesoria);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/listar")
    @PreAuthorize("hasRole('ASESOR')")
    public ResponseEntity<List<AsesoriaDTO>> listar() {
        List<AsesoriaDTO> lista = asesoriaService.listar();
        return ResponseEntity.ok(lista);
    }


    @GetMapping("/listar/{fecha}")
    @PreAuthorize("hasRole('ASESOR')")
    public ResponseEntity<List<AsesoriaDTO>> listarPorFecha(@RequestParam("fecha") LocalDate fechasesoria) {
        List<AsesoriaDTO> lista = asesoriaService.listarporfechasesoria(fechasesoria);
        return ResponseEntity.ok(lista);
    }
}
