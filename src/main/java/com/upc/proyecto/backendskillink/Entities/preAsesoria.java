package com.upc.proyecto.backendskillink.Entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class preAsesoria {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idpreasesoria;
    @Column(unique = true)
    private String nombrepreasesoria;
    private String temapreasesoria;
    private String descripcionpreasesoria;
    private Double costopreasesoria;
    private LocalDate fechapreasesoria;

}
