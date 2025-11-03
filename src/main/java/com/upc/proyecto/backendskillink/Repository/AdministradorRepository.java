package com.upc.proyecto.backendskillink.Repository;

import com.upc.proyecto.backendskillink.Entities.Administrador;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdministradorRepository extends JpaRepository<Administrador, Long> {
}
