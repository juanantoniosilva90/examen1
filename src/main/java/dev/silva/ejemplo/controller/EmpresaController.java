package dev.silva.ejemplo.controller;

import dev.silva.ejemplo.entity.EmpresaEntity;
import dev.silva.ejemplo.repository.EmpresaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/empresa")
public class EmpresaController {

    @Autowired
    private EmpresaRepository empresaRepository;

    @RequestMapping("/all")
    public Iterable<EmpresaEntity> getEmpresaEntity(){
        return  empresaRepository.findAll();
    }
}
