package com.upc.proyecto.backendskillink.Controller;

import com.upc.proyecto.backendskillink.DTO.CartillaAsesorDTO;
import com.upc.proyecto.backendskillink.Service.CartillaAsesorService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/skillink/cartillaasesor")
@RequiredArgsConstructor
@CrossOrigin(origins = "http://localhost:4200")
public class CartillaAsesorController {

    @Autowired
    private CartillaAsesorService cartillaAsesorService;

    // Crear una nueva cartilla
    @PostMapping("/registrarcartilla")
    public CartillaAsesorDTO crearCartilla(@RequestBody CartillaAsesorDTO dto) {
        return cartillaAsesorService.registrar_cartilla(dto);
    }

    // Actualizar una cartilla existente
    @PutMapping("/actualizarcartilla")
    public CartillaAsesorDTO actualizarCartilla(@RequestBody CartillaAsesorDTO dto) {
        return cartillaAsesorService.actualizar_cartilla(dto);
    }

    // Eliminar cartilla por ID
    @DeleteMapping("/eliminarcartilla/{id}")
    public void eliminarCartilla(@PathVariable Long id) {
        cartillaAsesorService.eliminarcartillaasesor(id);
    }

    // Listar todas las cartillas
    @GetMapping("/listarcartilla")
    public List<CartillaAsesorDTO> listarCartillas() {
        return cartillaAsesorService.listarcartillaasesores();
    }

    // Ordenar por precio ascendente
    @GetMapping("/ordenar/precio")
    public List<CartillaAsesorDTO> ordenarPorPrecioAsc() {
        return cartillaAsesorService.ordenarPorPrecioAsc();
    }

    // Ordenar por años de experiencia descendente
    @GetMapping("/ordenar/experiencia")
    public List<CartillaAsesorDTO> ordenarPorAniosExperienciaDesc() {
        return cartillaAsesorService.ordenarPorAniosExperienciaDesc();
    }

    // Filtrar por estrellas
    @GetMapping("/filtrar/estrellas")
    public List<CartillaAsesorDTO> filtrarPorEstrellas(@RequestParam Integer estrellas) {
        return cartillaAsesorService.filtrarPorEstrellas(estrellas);
    }

}
