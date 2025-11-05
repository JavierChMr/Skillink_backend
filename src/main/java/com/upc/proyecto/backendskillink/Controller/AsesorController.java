package com.upc.proyecto.backendskillink.Controller;

import com.upc.proyecto.backendskillink.DTO.AsesorDTO;
import com.upc.proyecto.backendskillink.DTO.AsesoriaDTO;
import com.upc.proyecto.backendskillink.Service.AsesorService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/skillink/asesor")
@RequiredArgsConstructor
@CrossOrigin(origins = "http://localhost:4200")
public class AsesorController {
    @Autowired
    private final AsesorService asesorService;


    @PostMapping("/registrar")
    public ResponseEntity<AsesorDTO> registrar(@RequestBody AsesorDTO asesorDTO) {
        AsesorDTO nuevoAsesor = asesorService.registrar(asesorDTO);
        return ResponseEntity.ok(nuevoAsesor);
    }


    @GetMapping("/listar")
    public ResponseEntity<List<AsesorDTO>> listar() {
        return ResponseEntity.ok(asesorService.listar());
    }

    @PutMapping("/actualizar")

    public ResponseEntity<AsesorDTO> actualizar(@Valid @RequestBody AsesorDTO asesorDTO) {
        AsesorDTO asesorActualizado = asesorService.actualizar(asesorDTO);
        return ResponseEntity.ok(asesorActualizado);
    }


    @GetMapping("/buscar/{id}")

    public ResponseEntity<AsesorDTO> buscarPorId(@PathVariable("id") Long idasesor) {
        AsesorDTO asesor = asesorService.findByIdasesor(idasesor);
        return ResponseEntity.ok(asesor);
    }


    @DeleteMapping("/eliminar/{id}")

    public ResponseEntity<Void> eliminar(@PathVariable("id") Long idasesor) {
        asesorService.eliminar(idasesor);
        return ResponseEntity.noContent().build();
    }



    @GetMapping("/listar/estado/{estado}")

    public ResponseEntity<List<AsesorDTO>> listarPorEstado(@PathVariable("estado") Boolean estadoasesor) {
        List<AsesorDTO> lista = asesorService.listarporestadoasesor(estadoasesor);
        return ResponseEntity.ok(lista);
    }

    @GetMapping("/listar/especialidad/{especialidad}")

    public ResponseEntity<List<AsesorDTO>> listarPorEspecialidad(@PathVariable("especialidad") String especialidadasesor) {
        List<AsesorDTO> lista = asesorService.listarporespecialidadasesor(especialidadasesor);
        return ResponseEntity.ok(lista);
    }

    @GetMapping("/buscar/especialidad/{especialidad}")

    public ResponseEntity<AsesorDTO> buscarPorEspecialidad(@PathVariable("especialidad") String especialidadasesor) {
        AsesorDTO asesor = asesorService.findByEspecialidadasesor(especialidadasesor);
        return ResponseEntity.ok(asesor);
    }
}
