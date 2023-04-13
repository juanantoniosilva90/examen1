package dev.silva.ejemplo.registry;

import lombok.Getter;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;

class RegistroEmpresa {

    public List<RegistroEmpresa> getUltimosRegistros(){

        List<RegistroEmpresa> ultimosRegistros = new ArrayList<>();

        return ultimosRegistros;

    }




}
