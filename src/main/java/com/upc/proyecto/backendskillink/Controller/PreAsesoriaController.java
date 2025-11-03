package com.upc.proyecto.backendskillink.Controller;

import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;
import com.upc.proyecto.backendskillink.DTO.PreAsesoriaDTO;
import com.upc.proyecto.backendskillink.Service.AsesoriaService;
import com.upc.proyecto.backendskillink.Service.PreAsesoriaService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/api/skillink/preasesoria")
public class PreAsesoriaController {
    @Autowired
    private PreAsesoriaService preAsesoriaService;

    @PostMapping("/registrar")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<PreAsesoriaDTO> registrar(@Valid @RequestBody PreAsesoriaDTO preAsesoriaDTO) {
        PreAsesoriaDTO nuevapreAsesoria = preAsesoriaService.registrar(preAsesoriaDTO);
        return ResponseEntity.ok(nuevapreAsesoria);
    }


    @PutMapping("/actualizar")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<PreAsesoriaDTO> actualizar(@Valid @RequestBody PreAsesoriaDTO preAsesoriaDTO) {
        PreAsesoriaDTO preasesoriaActualizada = preAsesoriaService.actualizar(preAsesoriaDTO);
        return ResponseEntity.ok(preasesoriaActualizada);
    }


    @GetMapping("/buscar/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<PreAsesoriaDTO> buscarPorId(@PathVariable("id") Long idpreasesoria) {
        PreAsesoriaDTO preasesoria = preAsesoriaService.findByIdasesoria(idpreasesoria);
        return ResponseEntity.ok(preasesoria);
    }


    @DeleteMapping("/eliminar/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Void> eliminar(@PathVariable("id") Long idpreasesoria) {
        preAsesoriaService.eliminar(idpreasesoria);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/listar")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<List<PreAsesoriaDTO>> listar() {
        List<PreAsesoriaDTO> lista = preAsesoriaService.listar();
        return ResponseEntity.ok(lista);
    }


    @GetMapping("/listar/{fecha}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<List<PreAsesoriaDTO>> listarPorFecha(@RequestParam("fecha") LocalDate fechapreasesoria) {
        List<PreAsesoriaDTO> lista = preAsesoriaService.listarporfechasesoria(fechapreasesoria);
        return ResponseEntity.ok(lista);
    }
}
