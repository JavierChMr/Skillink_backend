package com.upc.proyecto.backendskillink.DTO;

import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PreAsesoriaDTO {
    private Long idpreasesoria;
    private String nombrepreasesoria;
    private String temapreasesoria;
    private String descripcionpreasesoria;
    private Double costopreasesoria;
    private LocalDate fechapreasesoria;
}
