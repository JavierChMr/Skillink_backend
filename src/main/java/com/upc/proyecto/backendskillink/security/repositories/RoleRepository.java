package com.upc.proyecto.backendskillink.security.repositories;
import com.upc.proyecto.backendskillink.security.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}
