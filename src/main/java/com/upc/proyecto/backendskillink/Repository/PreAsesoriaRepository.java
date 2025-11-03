package com.upc.proyecto.backendskillink.Repository;

import com.upc.proyecto.backendskillink.Entities.Asesoria;
import com.upc.proyecto.backendskillink.Entities.preAsesoria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface PreAsesoriaRepository extends JpaRepository<preAsesoria, Long> {
    List<preAsesoria> findByFechapreasesoria(LocalDate fechapreasesoria);
}
