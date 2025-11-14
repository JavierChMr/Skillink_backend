package com.upc.proyecto.backendskillink.Entities;


import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class VerAsesoria {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long idverasesoria;
    public String descricionverasesoria;
    @ManyToOne
    @JoinColumn(name = "id_pago") //esto deber ser una tabla intermedia en el dto ps
    private Pago pago;
    @ManyToOne
    @JoinColumn(name= "asesoria")
    private Asesoria asesoria;



    @OneToMany(mappedBy = "verAsesoria", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonManagedReference
    private List<TemaAsesoria> temasAsesoria;

    @OneToMany(mappedBy = "verAsesoria", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonManagedReference("resenhaRef")
    private List<ResenhaAsesoria> resenhas;
}
