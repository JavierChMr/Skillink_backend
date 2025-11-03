package com.upc.proyecto.backendskillink.Entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.Digits;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Administrador {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idadministrador;
    @Column(unique = true)
    private String nombreadmin;
    private String correoadmin;
    @Digits(integer = 9, fraction = 0, message = "El teléfono debe tener hasta 9 dígitos")
    private int telefonoadmin;
    private String direccionadmin;

}
