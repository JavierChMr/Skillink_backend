package com.upc.proyecto.backendskillink.DTO;

import com.upc.proyecto.backendskillink.Entities.Asesor;
import com.upc.proyecto.backendskillink.Entities.Pago;
import com.upc.proyecto.backendskillink.Entities.ResenhaAsesoria;
import com.upc.proyecto.backendskillink.Entities.TemaAsesoria;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class VerAsesoriaDTO {

    public Long idverasesoria;
    public String descricionverasesoria;
    private LocalDate fechaAsesoria;
    public String temasasesoria;
    private Double precioAsesoria;
    private Asesor asesor;
    private ResenhaAsesoria resenhaAsesoria;
    private Pago pago;
    private List<TemaAsesoria> temasAsesoria;
    private List<ResenhaAsesoria> resenhas;

}
