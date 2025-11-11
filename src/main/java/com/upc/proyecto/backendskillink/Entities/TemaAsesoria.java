package com.upc.proyecto.backendskillink.Entities;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TemaAsesoria {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idtema;
    private String nombreTema;
    private String descripcionTema;

    @ManyToOne
    @JoinColumn(name = "idverasesoria")
    private VerAsesoria verAsesoria;

}
