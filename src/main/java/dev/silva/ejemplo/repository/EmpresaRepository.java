package dev.silva.ejemplo.repository;

import dev.silva.ejemplo.entity.EmpresaEntity;

public interface EmpresaRepository extends CrudRepository<EmpresaEntity, Long> {
    Iterable<EmpresaEntity> findAll();
}
