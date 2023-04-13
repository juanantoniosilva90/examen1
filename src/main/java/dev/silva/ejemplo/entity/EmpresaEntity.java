package dev.silva.ejemplo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.boot.autoconfigure.domain.EntityScan;

import java.io.Serializable;


@Data
@Entity
@Table (name = "Empresa")
public class EmpresaEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue=(strategy=GenerationType.IDENTITY)
    private int idEmpresa;

    private String ruc;

    private String RazonSocial;

    private String direccion;

    private String estado;


}
