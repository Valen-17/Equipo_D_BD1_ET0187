-- Alter table
-- PRIMARY KEYS
ALTER TABLE proyecto ADD CONSTRAINT id_proyecto PRIMARY KEY (id_proyecto);
ALTER TABLE evaluacion ADD CONSTRAINT id_evaluacion PRIMARY KEY (id_evaluacion);
ALTER TABLE asignatura ADD CONSTRAINT id_asignatura PRIMARY KEY (id_asignatura);
ALTER TABLE era ADD CONSTRAINT id_era PRIMARY KEY (id_era);
ALTER TABLE curso ADD CONSTRAINT id_curso PRIMARY KEY (id_curso);
ALTER TABLE programa_academico ADD CONSTRAINT id_programa_academico PRIMARY KEY (id_programa);
ALTER TABLE tipo_proyecto ADD CONSTRAINT id_tipo_proyecto PRIMARY KEY (id_tipo_proyecto);
ALTER TABLE entregable ADD CONSTRAINT id_entregable PRIMARY KEY (id_entregable);
ALTER TABLE tipo_entregable ADD CONSTRAINT id_tipo_entregable PRIMARY KEY (id_tipo_entregable);
ALTER TABLE linea_de_investigacion ADD CONSTRAINT id_linea PRIMARY KEY (id_linea);
ALTER TABLE profesor ADD CONSTRAINT id_profesor PRIMARY KEY (id_profesor);
ALTER TABLE estudiante ADD CONSTRAINT id_estudiante PRIMARY KEY (id_estudiante);
ALTER TABLE usuario ADD CONSTRAINT id_usuario PRIMARY KEY (id_usuario);
ALTER TABLE rol ADD CONSTRAINT id_rol PRIMARY KEY (id_rol);
ALTER TABLE permiso ADD CONSTRAINT id_permiso PRIMARY KEY (id_permiso);
ALTER TABLE ira ADD CONSTRAINT id_ira PRIMARY KEY (id_ira);
ALTER TABLE prestamo_insumo ADD CONSTRAINT id_prestamo_insumo PRIMARY KEY (id_prestamo);
ALTER TABLE universidad ADD CONSTRAINT id_universidad PRIMARY KEY (id_universidad);
ALTER TABLE rep ADD CONSTRAINT id_rep PRIMARY KEY (id_rep);
ALTER TABLE invitado ADD CONSTRAINT id_invitado PRIMARY KEY (id_invitado);
ALTER TABLE municipio ADD CONSTRAINT id_municipio PRIMARY KEY (id_municipio);
ALTER TABLE region ADD CONSTRAINT id_region PRIMARY KEY (id_region);
ALTER TABLE pais ADD CONSTRAINT id_pais PRIMARY KEY (id_pais);
ALTER TABLE taller_transito ADD CONSTRAINT id_taller PRIMARY KEY (id_taller);
ALTER TABLE tipo_insumo ADD CONSTRAINT id_insumo PRIMARY KEY (id_insumo);

-- FOREIGN KEYS
ALTER TABLE proyecto ADD CONSTRAINT fk_proyecto_tipo FOREIGN KEY (id_tipo) REFERENCES tipo_proyecto(id_tipo_proyecto);
ALTER TABLE evaluacion ADD CONSTRAINT fk_evaluacion_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE evaluacion ADD CONSTRAINT fk_evaluacion_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE asignatura ADD CONSTRAINT fk_asignatura_programa FOREIGN KEY (id_programa) REFERENCES programa_academico(id_programa);
ALTER TABLE era ADD CONSTRAINT fk_era_asignatura FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura);
ALTER TABLE curso ADD CONSTRAINT fk_curso_asignatura FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura);
ALTER TABLE curso ADD CONSTRAINT fk_curso_profesor FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor);
ALTER TABLE entregable ADD CONSTRAINT fk_entregable_tipo FOREIGN KEY (id_tipo_entregable) REFERENCES tipo_entregable(id_tipo_entregable);
ALTER TABLE profesor ADD CONSTRAINT fk_profesor_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE estudiante ADD CONSTRAINT fk_estudiante_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE estudiante ADD CONSTRAINT fk_estudiante_programa FOREIGN KEY (id_programa) REFERENCES programa_academico(id_programa);
ALTER TABLE rol ADD CONSTRAINT fk_rol_permiso FOREIGN KEY (id_permiso) REFERENCES permiso(id_permiso);
ALTER TABLE usuario_proyecto_rol ADD CONSTRAINT fk_upr_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE usuario_proyecto_rol ADD CONSTRAINT fk_upr_rol FOREIGN KEY (id_rol) REFERENCES rol(id_rol);
ALTER TABLE usuario_proyecto_rol ADD CONSTRAINT fk_upr_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE curso_proyecto ADD CONSTRAINT fk_cp_curso FOREIGN KEY (id_curso) REFERENCES curso(id_curso);
ALTER TABLE curso_proyecto ADD CONSTRAINT fk_cp_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE era_proyecto ADD CONSTRAINT fk_ep_era FOREIGN KEY (id_era) REFERENCES era(id_era);
ALTER TABLE era_proyecto ADD CONSTRAINT fk_ep_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE linea_investigacion_proyecto ADD CONSTRAINT fk_lip_linea FOREIGN KEY (id_linea) REFERENCES linea_de_investigacion(id_linea);
ALTER TABLE linea_investigacion_proyecto ADD CONSTRAINT fk_lip_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE ira_proyecto ADD CONSTRAINT fk_ira_ira FOREIGN KEY (id_ira) REFERENCES ira(id_ira);
ALTER TABLE ira_proyecto ADD CONSTRAINT fk_ira_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE prestamo_insumo ADD CONSTRAINT fk_pi_insumo FOREIGN KEY (id_insumo) REFERENCES tipo_insumo(id_insumo);
ALTER TABLE prestamo_insumo ADD CONSTRAINT fk_pi_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE prestamo_insumo ADD CONSTRAINT fk_pi_universidad FOREIGN KEY (id_universidad) REFERENCES universidad(id_universidad);
ALTER TABLE universidad_profesor ADD CONSTRAINT fk_up_universidad FOREIGN KEY (id_universidad) REFERENCES universidad(id_universidad);
ALTER TABLE universidad_profesor ADD CONSTRAINT fk_up_profesor FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor);
ALTER TABLE universidad_estudiante ADD CONSTRAINT fk_ue_universidad FOREIGN KEY (id_universidad) REFERENCES universidad(id_universidad);
ALTER TABLE universidad_estudiante ADD CONSTRAINT fk_ue_estudiante FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante);
ALTER TABLE universidad_programa_academico ADD CONSTRAINT fk_upa_universidad FOREIGN KEY (id_universidad) REFERENCES universidad(id_universidad);
ALTER TABLE universidad_programa_academico ADD CONSTRAINT fk_upa_programa FOREIGN KEY (id_programa) REFERENCES programa_academico(id_programa);
ALTER TABLE rep_proyecto ADD CONSTRAINT fk_rp_rep FOREIGN KEY (id_rep) REFERENCES rep(id_rep);
ALTER TABLE rep_proyecto ADD CONSTRAINT fk_rp_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE invitado ADD CONSTRAINT fk_invitado_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE municipio ADD CONSTRAINT fk_municipio_region FOREIGN KEY (id_region) REFERENCES region(id_region);
ALTER TABLE region ADD CONSTRAINT fk_region_pais FOREIGN KEY (id_pais) REFERENCES pais(id_pais);
ALTER TABLE taller_proyecto ADD CONSTRAINT fk_tp_proyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto);
ALTER TABLE taller_proyecto ADD CONSTRAINT fk_tp_taller FOREIGN KEY (id_taller) REFERENCES taller_transito(id_taller);