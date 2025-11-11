package com.upc.proyecto.backendskillink.security.controllers;

import com.upc.proyecto.backendskillink.Entities.Administrador;
import com.upc.proyecto.backendskillink.Entities.Asesor;
import com.upc.proyecto.backendskillink.Entities.Cliente;
import com.upc.proyecto.backendskillink.Service.AdministradorService;
import com.upc.proyecto.backendskillink.Service.AsesorService;
import com.upc.proyecto.backendskillink.Service.ClienteService;
import com.upc.proyecto.backendskillink.security.dtos.AuthRequestDTO;
import com.upc.proyecto.backendskillink.security.dtos.AuthResponseDTO;
import com.upc.proyecto.backendskillink.security.services.CustomUserDetailsService;
import com.upc.proyecto.backendskillink.security.util.JwtUtil;
import jakarta.validation.Valid;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.Set;

@CrossOrigin(origins = "http://localhost:4200", allowCredentials = "true", exposedHeaders = "Authorization")
@RestController
@RequestMapping("/api")
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final JwtUtil jwtUtil;
    private final ClienteService clienteService;
    private final AsesorService asesorService;
    private final AdministradorService administradorService;
    private final CustomUserDetailsService userDetailsService;

    public AuthController(AuthenticationManager authenticationManager,
                          JwtUtil jwtUtil,
                          ClienteService clienteService,
                          AsesorService asesorService,
                          AdministradorService administradorService,
                          CustomUserDetailsService userDetailsService) {
        this.authenticationManager = authenticationManager;
        this.jwtUtil = jwtUtil;
        this.clienteService = clienteService;
        this.asesorService = asesorService;
        this.administradorService = administradorService;
        this.userDetailsService = userDetailsService;
    }

    @PostMapping("/authenticate")
    public ResponseEntity<?> createAuthenticationToken(@RequestBody @Valid AuthRequestDTO authRequest) {
        try {
            // Autenticación básica con Spring Security (texto plano)
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(authRequest.getUsername(), authRequest.getPassword())
            );

            AuthResponseDTO response;

            // Buscar como Cliente
            Cliente cliente = clienteService.findByNombre(authRequest.getUsername());
            if (cliente != null && cliente.getPassword().equals(authRequest.getPassword())) {
                String token = jwtUtil.generateToken(cliente.getNombrecliente());
                response = new AuthResponseDTO();
                response.setJwt(token);
                response.setRoles(Set.of("USUARIO")); // ← Rol manual
                return ResponseEntity.ok().header(HttpHeaders.AUTHORIZATION, token).body(response);
            }

            // Buscar como Asesor
            Asesor asesor = asesorService.findByNombre(authRequest.getUsername());
            if (asesor != null && asesor.getPassword().equals(authRequest.getPassword())) {
                String token = jwtUtil.generateToken(asesor.getNombreasesor());
                response = new AuthResponseDTO();
                response.setJwt(token);
                response.setRoles(Set.of("ASESOR")); // ← Rol manual
                return ResponseEntity.ok().header(HttpHeaders.AUTHORIZATION, token).body(response);
            }

            // Buscar como Admin
            Administrador administrador = administradorService.findByNombre(authRequest.getUsername());
            if (administrador != null && administrador.getPassword().equals(authRequest.getPassword())) {
                String token = jwtUtil.generateToken(administrador.getNombreadmin());
                response = new AuthResponseDTO();
                response.setJwt(token);
                response.setRoles(Set.of("ADMIN")); // ← Rol manual
                return ResponseEntity.ok().header(HttpHeaders.AUTHORIZATION, token).body(response);
            }



            // Usuario no encontrado o contraseña incorrecta
            return ResponseEntity.status(401).body("Credenciales inválidas");

        } catch (BadCredentialsException e) {
            return ResponseEntity.status(401).body("Credenciales inválidas");
        } catch (Exception e) {
            return ResponseEntity.status(500).body("Error interno del servidor");
        }
    }
}