package com.upc.proyecto.backendskillink.Entities;


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
    private LocalDate fechaAsesoria;
    public String temasasesoria;
    private Double precioAsesoria;

    @ManyToOne
    @JoinColumn(name = "id_asesor")
    private Asesor asesor;

    @ManyToOne
    @JoinColumn(name = "id_resenhaasesoria")
    private ResenhaAsesoria resenhaAsesoria;

    @ManyToOne
    @JoinColumn(name = "id_pago")
    private Pago pago;

    @OneToMany(mappedBy = "verAsesoria", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<TemaAsesoria> temasAsesoria;




}
