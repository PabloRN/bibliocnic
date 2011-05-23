CREATE TABLE recurso (id BIGINT AUTO_INCREMENT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, position BIGINT, created_by BIGINT, updated_by BIGINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE articulo_version (id BIGINT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE autor (id BIGINT AUTO_INCREMENT, nombre VARCHAR(32) NOT NULL, apellidos VARCHAR(40) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE biblioteca_personal_version (id BIGINT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE descarga (id BIGINT AUTO_INCREMENT, recurso_id BIGINT, user_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), INDEX recurso_id_idx (recurso_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE diseminacion (user_id BIGINT, tematica_id BIGINT, PRIMARY KEY(user_id, tematica_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_area (id BIGINT AUTO_INCREMENT, dm_layout_id BIGINT, dm_page_view_id BIGINT, type VARCHAR(255) NOT NULL, INDEX dm_layout_id_idx (dm_layout_id), INDEX dm_page_view_id_idx (dm_page_view_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_auto_seo_translation (id BIGINT, slug VARCHAR(255) NOT NULL, name VARCHAR(255) NOT NULL, title VARCHAR(255) NOT NULL, h1 VARCHAR(255), description VARCHAR(255), keywords VARCHAR(255), strip_words TEXT, lang CHAR(2), PRIMARY KEY(id, lang)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_auto_seo (id BIGINT AUTO_INCREMENT, module VARCHAR(127) NOT NULL, action VARCHAR(127) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, UNIQUE INDEX dmAutoSeoModuleAction_idx (module, action), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_catalogue (id BIGINT AUTO_INCREMENT, name VARCHAR(255) NOT NULL, source_lang VARCHAR(15) NOT NULL, target_lang VARCHAR(15) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_error (id BIGINT AUTO_INCREMENT, php_class VARCHAR(127) NOT NULL, name VARCHAR(255) NOT NULL, description TEXT, module VARCHAR(127), action VARCHAR(127), uri VARCHAR(255) NOT NULL, env VARCHAR(63) NOT NULL, created_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_group (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_group_permission (dm_group_id BIGINT, dm_permission_id BIGINT, PRIMARY KEY(dm_group_id, dm_permission_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_layout (id BIGINT AUTO_INCREMENT, name VARCHAR(255) NOT NULL UNIQUE, template VARCHAR(255) DEFAULT 'page' NOT NULL, css_class VARCHAR(255), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_lock (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, user_name VARCHAR(255) NOT NULL, module VARCHAR(127) NOT NULL, action VARCHAR(127) NOT NULL, record_id BIGINT UNSIGNED DEFAULT 0 NOT NULL, time BIGINT NOT NULL, app VARCHAR(127) NOT NULL, url VARCHAR(255) NOT NULL, culture VARCHAR(15) NOT NULL, UNIQUE INDEX dmLockIndex_idx (user_id, module, action, record_id), INDEX user_id_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_mail_template_translation (id BIGINT, description TEXT, subject TEXT NOT NULL, body LONGTEXT NOT NULL, from_email TEXT NOT NULL, to_email TEXT, cc_email TEXT, bcc_email TEXT, reply_to_email TEXT, sender_email TEXT, list_unsuscribe TEXT, is_html TINYINT(1) DEFAULT '0' NOT NULL, is_active TINYINT(1) DEFAULT '1' NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_mail_template (id BIGINT AUTO_INCREMENT, name VARCHAR(255) NOT NULL UNIQUE, vars TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_media (id BIGINT AUTO_INCREMENT, dm_media_folder_id BIGINT NOT NULL, file VARCHAR(255) NOT NULL, legend VARCHAR(255), author VARCHAR(255), license VARCHAR(255), mime VARCHAR(63) NOT NULL, size INT UNSIGNED, dimensions VARCHAR(15), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, UNIQUE INDEX folderFile_idx (dm_media_folder_id, file), INDEX dm_media_folder_id_idx (dm_media_folder_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_media_folder (id BIGINT AUTO_INCREMENT, rel_path VARCHAR(255) NOT NULL UNIQUE, lft INT, rgt INT, level SMALLINT, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_page_translation (id BIGINT, slug VARCHAR(255) NOT NULL, name VARCHAR(255) NOT NULL, title VARCHAR(255), h1 VARCHAR(255), description VARCHAR(255), keywords VARCHAR(255), auto_mod VARCHAR(6) DEFAULT 'snthdk' NOT NULL, is_active TINYINT(1) DEFAULT '1' NOT NULL, is_secure TINYINT(1) DEFAULT '0' NOT NULL, is_indexable TINYINT(1) DEFAULT '1' NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_page (id BIGINT AUTO_INCREMENT, module VARCHAR(127) NOT NULL, action VARCHAR(127) NOT NULL, record_id BIGINT UNSIGNED DEFAULT 0 NOT NULL, credentials VARCHAR(255), lft INT, rgt INT, level SMALLINT, UNIQUE INDEX recordModuleAction_idx (module, action, record_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_page_view (id BIGINT AUTO_INCREMENT, module VARCHAR(127) NOT NULL, action VARCHAR(127) NOT NULL, dm_layout_id BIGINT, UNIQUE INDEX dmPageViewModuleAction_idx (module, action), INDEX dm_layout_id_idx (dm_layout_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_permission (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_redirect (id BIGINT AUTO_INCREMENT, source VARCHAR(255) NOT NULL UNIQUE, dest VARCHAR(255) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_remember_key (dm_user_id BIGINT, remember_key VARCHAR(32), ip_address VARCHAR(50), created_at DATETIME NOT NULL, INDEX dm_user_id_idx (dm_user_id), PRIMARY KEY(ip_address)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_sent_mail (id BIGINT AUTO_INCREMENT, dm_mail_template_id BIGINT, subject TEXT NOT NULL, body LONGTEXT NOT NULL, from_email TEXT NOT NULL, to_email TEXT, cc_email TEXT, bcc_email TEXT, reply_to_email TEXT, sender_email TEXT, strategy VARCHAR(255), transport VARCHAR(255), culture VARCHAR(16), debug_string LONGTEXT, created_at DATETIME NOT NULL, INDEX dm_mail_template_id_idx (dm_mail_template_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_setting_translation (id BIGINT, description VARCHAR(255), value TEXT, default_value TEXT, lang CHAR(2), PRIMARY KEY(id, lang)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_setting (id BIGINT AUTO_INCREMENT, name VARCHAR(127) NOT NULL UNIQUE, type VARCHAR(255) DEFAULT 'text' NOT NULL, params TEXT, group_name VARCHAR(255) DEFAULT '' NOT NULL, credentials VARCHAR(255), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_trans_unit (id BIGINT AUTO_INCREMENT, dm_catalogue_id BIGINT NOT NULL, source TEXT NOT NULL, target TEXT NOT NULL, meta VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX dm_catalogue_id_idx (dm_catalogue_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_user (id BIGINT AUTO_INCREMENT, username VARCHAR(255) NOT NULL UNIQUE, email VARCHAR(32) NOT NULL UNIQUE, algorithm VARCHAR(128) DEFAULT 'sha1' NOT NULL, salt VARCHAR(128), password VARCHAR(128), is_active TINYINT(1) DEFAULT '1', is_super_admin TINYINT(1) DEFAULT '0', last_login DATETIME, forgot_password_code VARCHAR(12) UNIQUE, titulo VARCHAR(255), nombre VARCHAR(32) NOT NULL, apellidos VARCHAR(40) NOT NULL, foto_id BIGINT, penalizado TINYINT(1) DEFAULT '0', created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX is_active_idx_idx (is_active), INDEX foto_id_idx (foto_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_user_group (dm_user_id BIGINT, dm_group_id BIGINT, PRIMARY KEY(dm_user_id, dm_group_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_user_permission (dm_user_id BIGINT, dm_permission_id BIGINT, PRIMARY KEY(dm_user_id, dm_permission_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_widget_translation (id BIGINT, value TEXT, lang CHAR(2), PRIMARY KEY(id, lang)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_widget (id BIGINT AUTO_INCREMENT, dm_zone_id BIGINT NOT NULL, module VARCHAR(127) NOT NULL, action VARCHAR(127) NOT NULL, css_class VARCHAR(255), position BIGINT, updated_at DATETIME NOT NULL, INDEX dm_zone_id_idx (dm_zone_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE dm_zone (id BIGINT AUTO_INCREMENT, dm_area_id BIGINT NOT NULL, css_class VARCHAR(255), width VARCHAR(15), position BIGINT, INDEX dm_area_id_idx (dm_area_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE documento_legal_version (id BIGINT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE evento (id BIGINT AUTO_INCREMENT, titulo VARCHAR(64) NOT NULL, ciudad VARCHAR(64) NOT NULL, fecha_inicio DATETIME, fecha_final DATETIME, descripcion VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE monografia_version (id BIGINT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE patente_version (id BIGINT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE pregunta (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, titulo VARCHAR(128), mensaje LONGTEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE presentacion_version (id BIGINT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE prestamo (id BIGINT AUTO_INCREMENT, user_id BIGINT UNIQUE NOT NULL, recurso_id BIGINT UNIQUE NOT NULL, fecha_prestamo DATETIME NOT NULL, fecha_devolucion DATETIME NOT NULL, prorroga TINYINT(1) DEFAULT '0', INDEX user_id_idx (user_id), INDEX recurso_id_idx (recurso_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE recurso_version (id BIGINT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE recurso (id BIGINT AUTO_INCREMENT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, position BIGINT, created_by BIGINT, updated_by BIGINT, INDEX recurso_type_idx (type), INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE recurso_autor (autor_id BIGINT, recurso_id BIGINT, PRIMARY KEY(autor_id, recurso_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE recurso_evento (recurso_id BIGINT, evento_id BIGINT, PRIMARY KEY(recurso_id, evento_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE recurso_tematica (tematica_id BIGINT, recurso_id BIGINT, PRIMARY KEY(tematica_id, recurso_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE respuesta (id BIGINT AUTO_INCREMENT, mensaje LONGTEXT, solicitud_id BIGINT, recurso_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, created_by BIGINT, updated_by BIGINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE respuesta (id BIGINT AUTO_INCREMENT, mensaje LONGTEXT, solicitud_id BIGINT, recurso_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, created_by BIGINT, updated_by BIGINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), INDEX solicitud_id_idx (solicitud_id), INDEX recurso_id_idx (recurso_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE solicitud (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, titulo VARCHAR(128), mensaje LONGTEXT, is_active TINYINT(1) DEFAULT '1', created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE solicitud_prestamo (id BIGINT AUTO_INCREMENT, user_id BIGINT UNIQUE NOT NULL, recurso_id BIGINT UNIQUE NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE tematica (id BIGINT AUTO_INCREMENT, nombre VARCHAR(32) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE tesis_version (id BIGINT, titulo VARCHAR(40) NOT NULL, anno VARCHAR(4), resumen VARCHAR(255), idioma VARCHAR(24), aprobado TINYINT(1) DEFAULT '0', fichero VARCHAR(255), formato_duro TINYINT(1) DEFAULT '0', type VARCHAR(255), pais VARCHAR(32), institucion VARCHAR(32), total_paginas INT, num_internacional VARCHAR(32), organismo VARCHAR(40), tipo_dc VARCHAR(255), cant_registros INT, fecha_inicial DATETIME, fecha_final DATETIME, ciudad_pub VARCHAR(32), editorial VARCHAR(32), isbn VARCHAR(16), volumen VARCHAR(16), num_revista VARCHAR(16), pagina_inicial MEDIUMINT, pagina_final MEDIUMINT, issn VARCHAR(16), num_diapositivas MEDIUMINT, departamento VARCHAR(32), ciudad VARCHAR(32), tutor VARCHAR(128), tipo VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
ALTER TABLE recurso ADD CONSTRAINT recurso_updated_by_dm_user_id FOREIGN KEY (updated_by) REFERENCES dm_user(id);
ALTER TABLE recurso ADD CONSTRAINT recurso_created_by_dm_user_id FOREIGN KEY (created_by) REFERENCES dm_user(id);
ALTER TABLE articulo_version ADD CONSTRAINT articulo_version_id_recurso_id FOREIGN KEY (id) REFERENCES recurso(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE biblioteca_personal_version ADD CONSTRAINT biblioteca_personal_version_id_recurso_id FOREIGN KEY (id) REFERENCES recurso(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE descarga ADD CONSTRAINT descarga_user_id_dm_user_id FOREIGN KEY (user_id) REFERENCES dm_user(id) ON DELETE RESTRICT;
ALTER TABLE descarga ADD CONSTRAINT descarga_recurso_id_recurso_id FOREIGN KEY (recurso_id) REFERENCES recurso(id) ON DELETE RESTRICT;
ALTER TABLE diseminacion ADD CONSTRAINT diseminacion_user_id_dm_user_id FOREIGN KEY (user_id) REFERENCES dm_user(id);
ALTER TABLE diseminacion ADD CONSTRAINT diseminacion_tematica_id_tematica_id FOREIGN KEY (tematica_id) REFERENCES tematica(id);
ALTER TABLE dm_area ADD CONSTRAINT dm_area_dm_page_view_id_dm_page_view_id FOREIGN KEY (dm_page_view_id) REFERENCES dm_page_view(id) ON DELETE CASCADE;
ALTER TABLE dm_area ADD CONSTRAINT dm_area_dm_layout_id_dm_layout_id FOREIGN KEY (dm_layout_id) REFERENCES dm_layout(id) ON DELETE CASCADE;
ALTER TABLE dm_auto_seo_translation ADD CONSTRAINT dm_auto_seo_translation_id_dm_auto_seo_id FOREIGN KEY (id) REFERENCES dm_auto_seo(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE dm_group_permission ADD CONSTRAINT dm_group_permission_dm_permission_id_dm_permission_id FOREIGN KEY (dm_permission_id) REFERENCES dm_permission(id) ON DELETE CASCADE;
ALTER TABLE dm_group_permission ADD CONSTRAINT dm_group_permission_dm_group_id_dm_group_id FOREIGN KEY (dm_group_id) REFERENCES dm_group(id) ON DELETE CASCADE;
ALTER TABLE dm_lock ADD CONSTRAINT dm_lock_user_id_dm_user_id FOREIGN KEY (user_id) REFERENCES dm_user(id) ON DELETE CASCADE;
ALTER TABLE dm_mail_template_translation ADD CONSTRAINT dm_mail_template_translation_id_dm_mail_template_id FOREIGN KEY (id) REFERENCES dm_mail_template(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE dm_media ADD CONSTRAINT dm_media_dm_media_folder_id_dm_media_folder_id FOREIGN KEY (dm_media_folder_id) REFERENCES dm_media_folder(id) ON DELETE CASCADE;
ALTER TABLE dm_page_translation ADD CONSTRAINT dm_page_translation_id_dm_page_id FOREIGN KEY (id) REFERENCES dm_page(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE dm_page_view ADD CONSTRAINT dm_page_view_dm_layout_id_dm_layout_id FOREIGN KEY (dm_layout_id) REFERENCES dm_layout(id) ON DELETE SET NULL;
ALTER TABLE dm_remember_key ADD CONSTRAINT dm_remember_key_dm_user_id_dm_user_id FOREIGN KEY (dm_user_id) REFERENCES dm_user(id) ON DELETE CASCADE;
ALTER TABLE dm_sent_mail ADD CONSTRAINT dm_sent_mail_dm_mail_template_id_dm_mail_template_id FOREIGN KEY (dm_mail_template_id) REFERENCES dm_mail_template(id) ON DELETE SET NULL;
ALTER TABLE dm_setting_translation ADD CONSTRAINT dm_setting_translation_id_dm_setting_id FOREIGN KEY (id) REFERENCES dm_setting(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE dm_trans_unit ADD CONSTRAINT dm_trans_unit_dm_catalogue_id_dm_catalogue_id FOREIGN KEY (dm_catalogue_id) REFERENCES dm_catalogue(id) ON DELETE CASCADE;
ALTER TABLE dm_user ADD CONSTRAINT dm_user_foto_id_dm_media_id FOREIGN KEY (foto_id) REFERENCES dm_media(id) ON DELETE RESTRICT;
ALTER TABLE dm_user_group ADD CONSTRAINT dm_user_group_dm_user_id_dm_user_id FOREIGN KEY (dm_user_id) REFERENCES dm_user(id) ON DELETE CASCADE;
ALTER TABLE dm_user_group ADD CONSTRAINT dm_user_group_dm_group_id_dm_group_id FOREIGN KEY (dm_group_id) REFERENCES dm_group(id) ON DELETE CASCADE;
ALTER TABLE dm_user_permission ADD CONSTRAINT dm_user_permission_dm_user_id_dm_user_id FOREIGN KEY (dm_user_id) REFERENCES dm_user(id) ON DELETE CASCADE;
ALTER TABLE dm_user_permission ADD CONSTRAINT dm_user_permission_dm_permission_id_dm_permission_id FOREIGN KEY (dm_permission_id) REFERENCES dm_permission(id) ON DELETE CASCADE;
ALTER TABLE dm_widget_translation ADD CONSTRAINT dm_widget_translation_id_dm_widget_id FOREIGN KEY (id) REFERENCES dm_widget(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE dm_widget ADD CONSTRAINT dm_widget_dm_zone_id_dm_zone_id FOREIGN KEY (dm_zone_id) REFERENCES dm_zone(id) ON DELETE CASCADE;
ALTER TABLE dm_zone ADD CONSTRAINT dm_zone_dm_area_id_dm_area_id FOREIGN KEY (dm_area_id) REFERENCES dm_area(id) ON DELETE CASCADE;
ALTER TABLE documento_legal_version ADD CONSTRAINT documento_legal_version_id_recurso_id FOREIGN KEY (id) REFERENCES recurso(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE monografia_version ADD CONSTRAINT monografia_version_id_recurso_id FOREIGN KEY (id) REFERENCES recurso(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE patente_version ADD CONSTRAINT patente_version_id_recurso_id FOREIGN KEY (id) REFERENCES recurso(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE pregunta ADD CONSTRAINT pregunta_user_id_dm_user_id FOREIGN KEY (user_id) REFERENCES dm_user(id) ON DELETE CASCADE;
ALTER TABLE presentacion_version ADD CONSTRAINT presentacion_version_id_recurso_id FOREIGN KEY (id) REFERENCES recurso(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE prestamo ADD CONSTRAINT prestamo_user_id_dm_user_id FOREIGN KEY (user_id) REFERENCES dm_user(id) ON DELETE RESTRICT;
ALTER TABLE prestamo ADD CONSTRAINT prestamo_recurso_id_recurso_id FOREIGN KEY (recurso_id) REFERENCES recurso(id) ON DELETE CASCADE;
ALTER TABLE recurso_version ADD CONSTRAINT recurso_version_id_recurso_id FOREIGN KEY (id) REFERENCES recurso(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE recurso_autor ADD CONSTRAINT recurso_autor_recurso_id_recurso_id FOREIGN KEY (recurso_id) REFERENCES recurso(id);
ALTER TABLE recurso_autor ADD CONSTRAINT recurso_autor_autor_id_autor_id FOREIGN KEY (autor_id) REFERENCES autor(id);
ALTER TABLE recurso_evento ADD CONSTRAINT recurso_evento_recurso_id_recurso_id FOREIGN KEY (recurso_id) REFERENCES recurso(id);
ALTER TABLE recurso_evento ADD CONSTRAINT recurso_evento_evento_id_evento_id FOREIGN KEY (evento_id) REFERENCES evento(id);
ALTER TABLE respuesta ADD CONSTRAINT respuesta_updated_by_dm_user_id FOREIGN KEY (updated_by) REFERENCES dm_user(id);
ALTER TABLE respuesta ADD CONSTRAINT respuesta_created_by_dm_user_id FOREIGN KEY (created_by) REFERENCES dm_user(id);
ALTER TABLE respuesta ADD CONSTRAINT respuesta_solicitud_id_solicitud_id FOREIGN KEY (solicitud_id) REFERENCES solicitud(id) ON DELETE CASCADE;
ALTER TABLE respuesta ADD CONSTRAINT respuesta_recurso_id_recurso_id FOREIGN KEY (recurso_id) REFERENCES recurso(id) ON DELETE CASCADE;
ALTER TABLE solicitud ADD CONSTRAINT solicitud_user_id_dm_user_id FOREIGN KEY (user_id) REFERENCES dm_user(id) ON DELETE CASCADE;
ALTER TABLE tesis_version ADD CONSTRAINT tesis_version_id_recurso_id FOREIGN KEY (id) REFERENCES recurso(id) ON UPDATE CASCADE ON DELETE CASCADE;
