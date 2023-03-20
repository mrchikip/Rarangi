CREATE DATABASE IF NOT EXISTS buscaefz5hnbxjjhmj9b;

USE buscaefz5hnbxjjhmj9b;

CREATE TABLE IF NOT EXISTS tasks(
    id INT NOT NULL AUTO_INCREMENT,
    tittle VARCHAR (100) NOT NULL,
    description TEXT,
    PRIMARY KEY(id)
);

INSERT INTO tasks (tittle, description) VALUES
    ('Task 1', 'Some Description'),
    ('Task 2', 'Some Description 2');

CREATE TABLE usuarios (
  nombre_empleado VARCHAR(255),
  usuario VARCHAR(50),
  cedula NUMERIC(20,0) PRIMARY KEY,
  cargo VARCHAR(100),
  proceso VARCHAR(100),
  centro_costo VARCHAR(50)
);

CREATE TABLE equipos (
  nombre_equipo VARCHAR(50),
  categoria VARCHAR(50),
  serial VARCHAR(20) PRIMARY KEY,
  sistema_operativo VARCHAR(50),
  modelo VARCHAR(50),
  fabricante VARCHAR(50),
  procesador VARCHAR(50),
  ram VARCHAR(50),
  tipo_almacenamiento VARCHAR(50),
  capacidad_almacenamiento VARCHAR(50),
  licencia_office VARCHAR(50),
  licencia_adobe VARCHAR(50),
  licencia_autocad VARCHAR(50),
  otras_licencias VARCHAR(100),
  licencia_sap VARCHAR(50),
  propiedad VARCHAR(50),
  salud VARCHAR(50),
  fecha_ultimo_mantenimiento DATE
);

CREATE TABLE gestion_equipos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_cedula NUMERIC(20,0),
  equipo_serial VARCHAR(20),
  fecha_movimiento DATE,
  tipo_movimiento VARCHAR(50),
  ubicacion VARCHAR(100),
  link_acta VARCHAR(255),
  FOREIGN KEY (usuario_cedula) REFERENCES usuarios(cedula),
  FOREIGN KEY (equipo_serial) REFERENCES equipos(serial)
);

INSERT INTO equipos ( nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('WS-AMP','Workstation','SPF33ETV6','Windows 10 Pro','Thinkpad E15 g3','Lenovo','Ryzen 5 - 5500U','8','SSD','512'),
('NB-CMA', 'NoteBook', '1Q1D733', 'Windows 10 Pro', 'Xps 13 9300', 'Dell', 'Intel Core I7-1065g7', '8', 'SSD', '512'),
('NB-LGP', 'NoteBook', 'CBNYJZ2', 'Windows 10 Pro', 'Vostro 3490', 'Dell', 'Intel Core I5-10210u', '8', 'HDD', '1024'),
('NB-AJM', 'NoteBook', '8JNTVG3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I7-1165g7', '8', 'SSD', '512'),
('NB-ADS', 'NoteBook', '6262HG3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('NB-AHS', 'NoteBook', '333HHW1', 'Windows 10 Pro', 'Inspiron 3421', 'Dell', 'Intel Core I5-3317u', '8', 'HDD', '500'),
('NB-ALO', 'NoteBook', 'PFOK7224', 'Windows 10 Pro', '20et001201', 'Lenovo', 'Intel Core I5-6200u', '8', 'HDD', '500'),
('PC-BASCULA', 'Desktop', 'SYJ019JVV', 'Windows 10 Pro', 'Thinkcentre M60e Tiny', 'Lenovo', 'Intel Core I3-1005g1', '8', 'HDD', '1024'),
('PC-ALMACENGUARNE', 'Desktop', '3JI3VH3', 'Windows 10 Pro', 'Optiplex 3080 sff', 'Dell', 'Intel Core i5-10505', '8', 'SSD', '256'),
('NB-AUDITORIA', 'Desktop', '8HFM2B3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('NB-AAC', 'NoteBook', 'HKTCZ93', 'Windows 10 Pro', 'Latitude 3410', 'Dell', 'Intel Core I5-10210u', '8', 'SSD', '256'),
('NB-AAM', 'NoteBook', '3X9J733', 'Windows 10 Pro', 'Latitude 5400', 'Dell', 'Intel Core I7-8665u', '8', 'HDD', '1024'),
('NB-AEG', 'NoteBook', 'CZ42HG3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256');

INSERT INTO equipos ( nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('NB-AMA','NoteBook','4QRZYZ2','Windows 10 Pro','Latitude 3400','Dell','Intel Core I5-8265u','8','SSD','480'),
('NB-AON','NoteBook','FK3Z763','Windows 10 Pro','Latitude 3410','Dell','Intel Core I5-10210u','8','SSD','256'),
('NB-ARA','NoteBook','1852HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('WS-AFV','Workstation','SPF3LPMHL','Windows 10 Pro','Thinkpad P15s 2g','Lenovo','Core i7 11va gen','16','SSD','512'),
('NB-AFC1','NoteBook','H062HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-ACP','NoteBook','77LKT93','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-AVL','NoteBook','2C26Q93','Windows 10 Pro','Vostro 14 5410','Dell','Intel Core I7-11370h','8','SSD','256'),
('NB-ARO1','NoteBook','1BND863','Windows 10 Pro','Latitude 3410','Dell','Intel Core I5-10210u','8','SSD','256'),
('NB-PCO2','NoteBook','3L7Z963','Windows 10 Pro','Latitude 3410','Dell','Intel Core I5-10210u','4','SSD','256'),
('NB-CSC','NoteBook','HH7Z963','Windows 10 Pro','Latitude 3410','Dell','Intel Core I5-10210u','8','SSD','256'),
('NB-CLS','NoteBook','CLG4CL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512');

INSERT INTO equipos ( nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('NB-CSA','NoteBook','DQM3DL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512'),
('NB-CTV','NoteBook','H9DM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('WS-CGE','Workstation','SPF36PEGL','Windows 10 Pro','Thinkpad P15V g1','Lenovo','Intel Core I7-10750H','16','SSD','1024'),
('NB-CIT','NoteBook','4862HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-CMB','NoteBook','7KZVQ93','Windows 10 Pro','Latitude 5320','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-CUM','NoteBook','6KG4CL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512'),
('WS-JBO','Workstation','MJ01TCEN','Windows 10 Pro','ThinkStation P300','Lenovo','INTEL XEON E3-1226V3','12','HDD','1024'),
('NB-CVS','NoteBook','FWQ3DL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512'),
('NB-CML','NoteBook','BQCR493','Windows 10 Pro','x','Dell','Intel Core I7-1165g7','16','SSD','512'),
('NB-CGQ','NoteBook','83DMWS2','Windows 10 Pro','Latitude 3490','Dell','Intel Core I5-10210u','X','X','X'),
('NB-CAZ','NoteBook','DFNTVG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I7-1165g7','16','SSD','512'),
('NB-DBP','NoteBook','D86XC33','Windows 10 Pro','Vostro 3490','Dell','Intel Core I5-10210u','8','SSD','480'),
('NB-CEG','NoteBook','H272HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-CSC','NoteBook','13KN393','Windows 10 Pro','Vostro 3400','Dell','Intel Core I5-1135g7','8','SSD','256'),
('PC-SUPERSEKI','Desktop','HYBCQJ3','Windows 10 Pro','Optiplex 3080 sff','Dell','Intel Core i5-10505','8','SSD','256');

INSERT INTO equipos ( nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('NB-SAR','NoteBook','G4DM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-DCC','NoteBook','9P92RV2','Windows 11 pro','Latitude 5490','Dell','Intel Core I7-8650u','8','HDD','500'),
('PC-SDESPACHOS1','Desktop','3021JL2','Windows 10 Pro','Optiplex 3050','DELL','Intel Core I7-765','X','X','500'),
('X','Desktop','MJXKMXB','Windows 10 Pro','ThinkCentre M72e Type 3598','Lenovo','Intel Core I3 - 2100','8','HDD','500'),
('NB-EAM','NoteBook','6R82HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-EDM','NoteBook','HC26TQ2','Windows 10 Pro','Latitude 7290','Dell','Intel Core I7-8650u','8','SSD','256'),
('PC-EMPAQUE2','Desktop','YJ019JV7','Windows 10 Pro','Thinkcentre M60e Tiny','Lenovo','Intel Core I3-1005g1','8','SSD','480'),
('PC-EMPAQUE1','Desktop','2BK04Z2','Windows 10 Pro','Optiplex 3070 Micro','Dell','Intel Core I3-9100t','4','SSD','480'),
('NB-TIC','NoteBook','JF4SDP2','Windows 10 Pro','Latitude 3490','Dell','Intel Core I7-8550u','8','SSD','480'),
('PC-TALLERDPS','Desktop','SYJ019JT4','Windows 10 Pro','Thinkcentre M60e Tiny','Lenovo','Intel Core I3-1005g1','8','SSD','480'),
('NB-LIDERSOFASA','Desktop','9K4HKW1','Windows 10 Pro','Inspiron 3421','Dell','Intel Core I5 - 3337u','4','HDD','500'),
('NB-LSOFASA','NoteBook','FX62HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-MGJ','NoteBook','87HM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-JLD','NoteBook','87SP7C3','Windows 10 Pro','Xps 13 9310 2-In-1','Dell','Intel Core I7-1165g7','16','SSD','512'),
('NB-GGM','NoteBook','8C52HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256');

INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('NB-GJO','Desktop','19DM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-GAG','NoteBook','GLRZYZ2','Windows 10 Pro','Latitude 3400','Dell','Intel Core I5-8265u','8','HDD','1024'),
('NB-HRE','NoteBook','x','Windows 10 Pro','20et001201','Lenovo','Intel Core I5 6200u','8','SSD','480'),
('WS-HAE','Workstation','SPF3LLSEC','Windows 10 Pro','Thinkpad P15s 2g','Lenovo','Core i7 11va gen','16','SSD','512'),
('PC-TSM1','Desktop','SYJ019JW6','Windows 10 Pro','Thinkcentre M60e Tiny','Lenovo','Intel Core I3-1005g1','8','HDD','1024'),
('PC-SMOTOS','Desktop','SYJ019JSQ','Windows 10 Pro','Thinkcentre M60e Tiny','Lenovo','Intel Core I3-1005g1','8','HDD','1024'),
('NB-IGL','NoteBook','PF0SNJQE','Windows 10 Pro','20h1000300','Lenovo','Intel Core I5-7200u','8','HDD','500'),
('NB-ICA','NoteBook','95DM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-JZC','NoteBook','1Y62HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('PC-IGL','Desktop','803PCX1','Windows 10 Pro','Optiplex 7010','Dell','Intel Core I5-3470','4','SSD','480'),
('PC-STUBERIA','Desktop','4SJBK02','Windows 10 Pro','Optiplex 3020','Dell','Intel Core I3-4130','3','HDD','500'),
('NB-JCG','NoteBook','3DFM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('PC-STALLER','Desktop','2B404Z2','Windows 10 Pro','Optiplex 3070','Dell','Intel Core I3-9100t','4','HDD','500'),
('NB-JAR','NoteBook','4JPL723','Windows 10 Pro','Vostro 3490','Dell','Intel Core I5-10210u','8','HDD','1024'),
('NB-JMJ','NoteBook','8MRZYZ2','Windows 10 Pro','Latitude 3400','Dell','Intel Core I5-8265u','8','SSD','512');

INSERT INTO equipos ( nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('NB-JZM','NoteBook','2CSCZ93','Windows 10 Pro','Latitude 3410','Dell','Intel Core I5-10210u','8','SSD','256'),
('PC-MTALLERMTO','Desktop','SYJ019JXE','Windows 10 Pro','Thinkcentre M60e Tiny','Lenovo','Intel Core I3-1005g1','8','SSD','500'),
('PC-PRP','Desktop','JPFMKH2','Windows 10 Pro','Optiplex 3050','Dell','Intel Core i5 4030','8','HDD','500'),
('WS-STUBERIA','Desktop','FNJVT52','Windows 10 Pro','Optiplex 3020','Dell','Intel Core I3-4160','8','HDD','500'),
('NB-JMH','NoteBook','DB26Q93','Windows 10 Pro','Vostro 14 5410','Dell','Intel Core I7-11370h','8','SSD','256'),
('PC-JPE','Desktop','C0CCQJ3','Windows 10 Pro','Optiplex 3080 sff','Dell','Intel Core i5-10505','8','SSD','256'),
('NB-JAC','NoteBook','BD52HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-JDV','NoteBook','G852HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-JES','NoteBook','8252HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-JRJ1','NoteBook','JRGM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-JGL','NoteBook','44MWJZ2','Windows 10 Pro','Vostro 3490','DELL','Intel Core I5-10210u','8','SSD','480'),
('PC-FORMAPRESS','Desktop','SYJ019JT3','Windows 10 Pro','Thinkcentre M60e Tiny','Lenovo','Intel Core I3-1005g1','8','HDD','1024'),
('NB-PREXA','NoteBook','8N7XNY1','Windows 10 Pro','System Vostro 3360','Dell','Intel Core I5-3337u','6','HDD','500'),
('NB-WTS','NoteBook','BC72HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('WS-JRV','Workstation','PF3LPZN4','Windows 10 Pro','Thinkpad P15s 2g','Lenovo','Core i7 11va gen','16','SSD','512');

INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('NB-JMB', 'NoteBook', '3RM3DL3', 'Windows 10 Pro', 'Inspiron 3420', 'Dell', 'Core i5 11va gen', '8', 'SSD', '512'),
('NB-JDC', 'NoteBook', '9S716P522271ZI5000007', 'Windows 10 Pro', 'Gp63 Leopard 8re', 'MSI', 'Intel Core I7-8750h', '16', 'HDD', '500'),
('NB-JJV', 'NoteBook', 'CSC0XT2', 'Windows 10 Pro', 'Latitude 5490', 'Dell', '8va Gen Intel Core I7', '8', 'HDD', '500'),
('NB-JCV', 'NoteBook', '4Z6B763', 'Windows 10 Pro', 'Latitude 3410', 'Dell', 'Intel Core I5-10210u', '8', 'SSD', '256'),
('NB-JSC', 'NoteBook', '77DM2B3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('PC-JMZ', 'Desktop', 'D1LWSW1', 'Windows 10 Pro', 'Optiplex 7010', 'Dell', 'Intel Core I7-3770', '8', 'HDD', '500'),
('NB-JBG', 'NoteBook', 'FYGM2B3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('PC-JFL', 'Desktop', '46GCQJ3', 'Windows 10 Pro', 'Optiplex 3080 sff', 'Dell', 'Intel Core i5-10505', '8', 'SSD', '256'),
('PC-JFR', 'Desktop', 'SYJ019JVA', 'Windows 10 Pro', 'Thinkcentre M60e Tiny', 'Lenovo', 'Intel Core I3-1005g1', '8', 'HDD', '1024'),
('NB-JFR', 'NoteBook', 'BJZ78S2', 'Windows 10 Pro', 'Latitude 5490', 'Dell', 'Intel Core I7-8650u', '8', 'SDD', '500'),
('NB-JJS', 'Workstation', 'PF3MJXLH', 'Windows 10 Pro', 'Thinkpad P15s 2g', 'Lenovo', 'Core i7 11va gen', '16', 'SSD', '512'),
('WS-JPC', 'Workstation', 'MJ01TCEP', 'Windows 10 Pro', '30aga00w00', 'Lenovo', 'Intel Xeon E3-1226', '16', 'SSD', '480'),
('NB-JTV', 'NoteBook', '4FN3DL3', 'Windows 10 Pro', 'Inspiron 3420', 'Dell', 'Core i5 11va gen', '8', 'SSD', '512');

INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES 
('WS-JEM','Workstation','PF3LPZL4','Windows 10 Pro','Thinkpad P15s 2g','Lenovo','Core i7 11va gen','16','SSD','512'),
('NB-DCS','NoteBook','PF0XBDEY','Windows 10 Pro','20hea07600','Lenovo','Intel Core I7-7500u','8','HDD','500'),
('NB-PGA','NoteBook','2C52HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('PC-KBO','Desktop','5J13VH3','Windows 10 Pro','Optiplex 3080 sff','Dell','Intel Core i5-10505','8','SSD','256'),
('NB-KPG','NoteBook','BKB2HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('PC-JAI','Desktop','GBV5LH2','Windows 10 Pro','Optiplex 7010','Dell','Intel Core I5-3470','4','HDD','500'),
('NB-LFO','NoteBook','D9DM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','HDD','256'),
('NB-LMD','NoteBook','6N3Z763','Windows 10 Pro','Latitude 3410','Dell','Intel Core I5-10210u','8','SSD','256'),
('NB-MTL','NoteBook','HDLYWT2','Windows 10 Pro','Latitude 5490','Dell','8va Gen Intel Core I7','8','HDD','500'),
('WS-METROLOGIA','Workstation','SPF33KVQQ','Windows 10 Pro','Thinkpad T15g Gen2','Lenovo','Core i7 11va gen','16','SSD','1024'),
('NB-MAP','NoteBook','G74Z763','Windows 10 Pro','Latitude 3410','Dell','Intel Core I5-10210u','8','SSD','256'),
('NB-CMV','NoteBook','9ZR5J33','Windows 10 Pro','Vostro 3490','Dell','Intel Core I5-10210u','8','HDD','1024'),
('NB-PDF','NoteBook','5RM3DL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512');

INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('NB-MMV','NoteBook','PF-0K7224','Windows 10 Pro','Vostro 3490','DELL','Intel Core I5-10210u','8','SSD','480'),
('NB-MAA1','NoteBook','82DM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-MOG','NoteBook','6MG4CL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512'),
('WS-MAR','Workstation','MJ06PCGR','Windows 10 Pro','30aga00w00','Lenovo','Intel Xeon','16','HDD','500'),
('NB-','NoteBook','2LDYWT2','Windows 10 Pro','Latitude 5490','Dell','Intel Core i7-8650U','8','HDD','500'),
('PC-TALLERHERI','Desktop','BVN6CX1','Windows 10 Pro','Optiplex 9010','Dell','Intel Core I7-3770','8','HDD','500'),
('NB-MTL','NoteBook','D9QDZ32','Windows 10 Pro','Inspiron 3420','dell','Intel Core i5-5200U','8','SSD','480'),
('PC-SELLADO','Desktop','3J53PY2','Windows 10 Pro','Optiplex 3070','Dell','Intel Core I3-9100t','4','HDD','500'),
('WS-OBP','Desktop','J3VT7X2','Windows 10 Pro','Optiplex 3060','Dell','Intel Core i5 8va gen','8','HDD','500'),
('NB-PAM','NoteBook','1FQCZ93','Windows 10 Pro','Latitude 3410','Dell','Intel Core I5-10210u','8','SSD','256'),
('PC-PORTERIA1','Desktop','2YTVCZ1','Windows 10 Pro','x','DELL','x','8','HDD','1024'),
('PC-PP2','Desktop','619WRB3','Windows 10 Pro','Optiplex 3080','Dell','Intel Core I5-10500t','8','HDD','500'),
('NB-TGZ','Desktop','4B8R333','Windows 10 Pro','Optiplex 7070 Ultra','Dell','Intel Core I5-10210u','8','HDD','500');


INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('NB-ACA','NoteBook','1VTCZ93','Windows 10 Pro','Latitude 3410','Dell','Intel Core I5-10210u','8','SSD','256'),
('NB-PSG3','NoteBook','PF0K77XU','Windows 10 Pro','20et001201','Lenovo','Intel Core I5-6200u','8','HDD','500'),
('NB-SRF','NoteBook','DGNTVG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I7-1165g7','16','SSD','512'),
('NB-JAL','NoteBook','J526Q93','Windows 10 Pro','Vostro 14 5410','Dell','Intel Core I7-11370h','16','SSD','256'),
('NB-SGG','NoteBook','BKZVQ93','Windows 10 Pro','Latutude 13 5320','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-SEI','NoteBook','1WSKT93','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('PC-SCU','Desktop','CXBCQJ3','Windows 10 Pro','Optiplex 3080 sff','Dell','Intel Core i5-10505','8','SSD','256'),
('NB-SCP','NoteBook','CMRZYZ2','Windows 10 Pro','Latitude 3400','Dell','Intel Core I5-8265u','8','HDD','1024'),
('NB-SAH','NoteBook','3HCM2B3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('WS-SMM','Workstation','MJ01TCEU','Windows 10 Pro','30aga00w00','Lenovo','Intel Xeon E3-1226','16','HDD','1024'),
('PC-MTS','Desktop','SYJ019JVY','Windows 10 Pro','Thinkcentre M60e Tiny','Lenovo','Intel Core I3-1005g1','8','HDD','1024'),
('NB-VRB','NoteBook','9HN3DL3','Windows 10 Pro','Latitude 3420','Dell','Core i5 11va gen','8','SSD','512'),
('WS-WAG','Workstation','PF3LPJ19','Windows 10 Pro','Thinkpad P15s 2g','Lenovo','Core i7 11va gen','16','SSD','512');


INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento)
VALUES
('NB-YMB', 'NoteBook', '7QM3DL3', 'Windows 10 Pro', 'Inspiron 3420', 'Dell', 'Core i5 11va gen', '8', 'SSD', '512'),
('NB-YLO', 'NoteBook', '8L3G2B3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('NB-YPH', 'NoteBook', '9062HG3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('NB-YMG', 'NoteBook', '9652HG3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('NB-ZOS', 'NoteBook', 'HQ36J33', 'Windows 10 Pro', 'Vostro 3490', 'DELL', 'Intel Core I5-10210u', '8', 'SSD', '500'),
('NB-ZULAY', 'NoteBook', 'HQM3DL3', 'Windows 10 Pro', 'Inspiron 3420', 'Dell', 'Core i5 11va gen', '8', 'SSD', '512'),
('NB-JAI1', 'NoteBook', 'PC0MRGDW', 'Windows 10 Pro', '20hms1af00', 'Lenovo', 'Intel Core I7-7500u', '8', 'HDD', '500'),
('NB-JFE', 'NoteBook', '5YWBJM2', 'Windows 10 Pro', 'Latitude 7380', 'Dell', 'Intel Core I7-7600u', '8', 'HDD', '500'),
('NB-Revisor', 'NoteBook', '1GFM2B3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('NB-NRN', 'NoteBook', '6HNTVG3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I7-1165g7', '16', 'SSD', '512'),
('NB-PRESTAMOS', 'NoteBook', 'PF-0FUXZ8', 'Windows 10 Pro', 'E460', 'Lenovo', 'Intel Core i3-2120', '8', 'HDD', '500'),
('WS', 'Workstation', 'MJ01TCET', 'Windows 10 Pro', '30aga00w00', 'Lenovo', 'Intel Xeon E3-1226', '16', 'SSD', '480'),
('x', 'Desktop', '63XVBH2', 'Windows 10 Pro', 'Optiplex 3040', 'Dell', 'Intel Core I7-6700', '8', 'HDD', '500');

INSERT INTO equipos ( nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('x','NoteBook','C3BVQQ2','Windows 10 Pro','Precision 3530','Dell','Intel Core I7-8750h','16','HDD','500'),
('X','NoteBook','8LH5K12','Windows 10 Pro','Latitude E7240','Dell','Intel Core I7-4600u','8','HDD','500'),
('X','NoteBook','7Q81062','Windows 10 Pro','Latitude E5250','Dell','Intel Core I5-5300u','8','HDD','500'),
('X','Desktop','SYJ019JV5','Windows 10 Pro','Thinkcentre M60e Tiny','Lenovo','Intel Core I3-1005g1','8','HDD','1024'),
('X','Desktop','4BCQD33','Windows 10 Pro','Optiplex 7070 Ultra','Dell','Intel Core I5-8265u','8','SSD','256'),
('x','NoteBook','BC62HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('x','NoteBook','CX62HG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I5-1135g7','8','SSD','256'),
('NB-YDR','NoteBook','BHNTVG3','Windows 10 Pro','Latitude 3420','Dell','Intel Core I7-1165g7','16','SSD','512'),
('NB-NEW','NoteBook','2SM3DL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512'),
('NB-NEW','NoteBook','4YQ3DL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512'),
('NB-NEW','NoteBook','DD74DL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512'),
('NB-NEW','NoteBook','DVQ3DL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512'),
('NB-NEW','NoteBook','GRM3DL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512');

INSERT INTO equipos ( nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento)
VALUES
('NB-NEW','NoteBook','2XQ3DL3','Windows 10 Pro','Inspiron 3420','Dell','Core i5 11va gen','8','SSD','512'),
('PC-NEW','Desktop','456KLM3','Windows 10 Pro','Optiplex 3090','Dell','Core i5 10ma gen','8','SSD','256'),
('PC-NEW','Desktop','536KLM3','Windows 10 Pro','Optiplex 3090','Dell','Core i5 10ma gen','8','SSD','256'),
('PC-NEW','Desktop','DP89LM3','Windows 10 Pro','Optiplex 3090','Dell','Core i5 10ma gen','8','SSD','256'),
('PC-NEW','Desktop','FTZJLM3','Windows 10 Pro','Optiplex 3090','Dell','Core i5 10ma gen','8','SSD','256'),
('PC-NEW','Desktop','HR89LM3','Windows 10 Pro','Optiplex 3090','Dell','Core i5 10ma gen','8','SSD','256'),
('WS-NEW','Workstation','SPF3LLZ7Y','Windows 10 Pro','Thinkpad P15s 2g','Lenovo','Core i7 11va gen','16','SSD','512'),
('WS-NEW','Workstation','SPF3LPMMH','Windows 10 Pro','Thinkpad P15s 2g','Lenovo','Core i7 11va gen','16','SSD','512'),
('WS-NEW','Workstation','SPF3LPRNV','Windows 10 Pro','Thinkpad P15s 2g','Lenovo','Core i7 11va gen','16','SSD','512'),
('WS-NEW','Workstation','SPF3LQ2MW','Windows 10 Pro','Thinkpad P15s 2g','Lenovo','Core i7 11va gen','16','SSD','512'),
('X','Desktop','6M7GS52','Windows 10 Pro','Optiplex 9020','Dell','Intel Core i7-4790','8','HDD','500'),
('x','Desktop','HH4CQJ3','Windows 10 Pro','Optiplex 3080 sff','Dell','Intel Core i5-10505','8','SSD','256'),
('NB-AIE1','NoteBook','F2986Z2','Windows 10 Pro','Vostro 3480','Dell','Intel Core I5-8265u','8','HDD','1024');

INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('NB-AFC', 'NoteBook', '73DM2B3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('NB-DGQ', 'NoteBook', '86S9BV1', 'Windows 7 Pro', 'Inspiron 3420', 'Dell', 'Intel Core I5-3210m', '4', 'HDD', '750'),
('PC-FJJ', 'Desktop', '8G13VH3', 'Windows 10 Pro', 'Optiplex 3080 sff', 'Dell', 'Intel Core i5-10505', '8', 'SSD', '256'),
('NB-MMT', 'NoteBook', 'Xx', 'Windows 7 Pro', 'R9ycza7', 'Lenovo', 'Intel Core I7-3630qm', '10', 'HDD', '500'),
('NB-SRG', 'NoteBook', 'BVY9C33', 'Windows 10 Pro', 'Vostro 3490', 'Dell', 'Intel Core I5-10210u', '8', 'HDD', '1024'),
('x', 'NoteBook', '779Z963', 'Windows 10 Pro', 'Latitude 3410', 'Dell', 'Intel Core I5-10210u', '8', 'SSD', '256'),
('x', 'NoteBook', 'FFNTVG3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I7-1165g7', '16', 'SSD', '512'),
('x', 'NoteBook', 'DFFM2B3', 'Windows 10 Pro', 'Latitude 3420', 'Dell', 'Intel Core I5-1135g7', '8', 'SSD', '256'),
('x', 'NoteBook', 'FD7RR32', 'Windows 10 Pro', 'Latitude E5250', 'Dell', 'Intel Core I5-5300u', '8', 'ssd', '500'),
('x', 'NoteBook', '4BF52G2', 'X', 'Latitude e7470', 'Dell', 'x', 'x', 'x', 'x'),
('PC-', 'Desktop', 'MJ0506VJ', 'X', 'M700', 'Lenovo', 'Core i7 8va gen', 'x', 'x', 'x'),
('X', 'NoteBook', '3RM5MH2', 'Windows 10 Pro', 'Latitude 5280', 'Dell', 'Intel Core I7-7600u', '8', 'HDD', '500'),
('PC-DGR', 'Desktop', '198012', 'Windows 7 Pro', 'XUE5231', 'SURE Computers', 'Intel Core I5 - 2310m', '4', 'HDD', '500');

INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('x', 'Desktop', '177508', 'Windows 7 Pro', 'NUMA 9E7500', 'SURE Computers', 'Intel Core2 Duo E7500', '4', 'HDD', '500'),
('X', 'NoteBook', '46LJ3Z1', 'Windows 7 Pro', 'Inspiron 3437', 'Dell', 'Intel Core I5-4200u', '6', 'HDD', '500'),
('X', 'Desktop', 'JP4TJ02', 'Windows 10 Pro', 'Optiplex 7010', 'Dell', 'Intel Core I5-3470', '8', 'HDD', '500'),
('X', 'NoteBook', 'CLRZYZ2', 'Windows 10 Pro', 'Latitude 3400', 'Dell', 'Intel Core I5-8265u', '8', 'HDD', '1024'),
('X', 'NoteBook', '188P563', 'Windows 10 Pro', 'Latitude 3410', 'Dell', 'Intel Core I5-10210u', '8', 'SSD', '256'),
('X', 'NoteBook', '8YG08S2', 'X', 'Precision 3530', 'Dell', 'Intel Core I7-8750h', '16', 'SSD', '480'),
('X', 'Desktop', '8NL88V1', 'X', 'Vostro 260s', 'Dell', 'Intel Core I3-2120', '6', 'HDD', '500'),
('X', 'Desktop', '2 BE FILLED BY OEM', 'X', 'H61h2-M12', 'Ecs', 'Intel Pentium G620', '2', 'HDD', '500'),
('X', 'Desktop', 'Xx1', 'x', 'NUMA 5E5700', 'SURE Computers', 'Pentium De Doble N˙cleo E5700', '4', 'HDD', '500'),
('X', 'Desktop', '188286', 'Windows 7 Pro', 'NUMA 8E5500', 'SURE Computers', 'Pentium De Doble N˙cleo E5500', '4', 'HDD', '500'),
('X', 'Desktop', '168603', 'Windows 7 Pro', 'NUMA 9E7500', 'SURE Computers', 'Intel Core2 Duo E7500', '4', 'HDD', '500'),
('x', 'Desktop', 'MJWGCZK', 'X', 'ThinkCentre M72e', 'Lenovo', 'Intel Core i3', 'X', 'X', 'X'),
('X', 'Desktop', '188284', 'Windows 7 Pro', 'NUMA 8E5500', 'SURE Computers', 'Pentium De Doble N˙cleo E5500', '4', 'HDD', '500');


INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES 
('NC-CAR1', 'NoteBook', 'x1', 'Windows 10 Pro', 'Latitude E7470', 'Dell', 'Intel Core I7-6600u', '8', 'HDD', '500'),
('X', 'Desktop', '190938', 'X2', 'NUMA 5E5700', 'SURE Computers', 'Pentium De Doble N˙cleo E5700', '4', 'HDD', '500'),
('PC-CEG', 'Desktop', 'x3', 'Windows 7 Pro', 'Optiplex 9020', 'Dell', 'Intel Core I5 - 4590', '8', 'HDD', '500'),
('NB-AEU', 'NoteBook', 'x4', 'Windows 7 Pro', 'Latitude E7250', 'Dell', 'Intel Core I7-5600u', '8', 'HDD', '500'),
('NB-JPB', 'NoteBook', 'x5', 'Windows 10 Pro', 'Latitude 7290', 'Dell', 'Intel Core I7-8650u', '8', 'SSD', '256'),
('pc-PCE', 'Desktop', '804PCX1', 'Windows 7 Pro', 'optiplex', 'Dell', 'Intel Core I3-4030u', '8', 'HDD', '500'),
('x', 'Desktop', '12ZXHM1', 'Windows 7 Pro', 'Optiplex 780', 'Dell', 'Intel Core2 Duo E7500', '3', 'HDD', '500'),
('X', 'NoteBook', 'DHCKQT1', 'X', 'Inspiron 5423', 'Dell', 'Intel Core I7-3537u', '4', 'HDD', '500'),
('x', 'NoteBook', '24rfj42', 'x', 'Vostro 5470', 'Dell', 'x', 'x', 'x', 'x'),
('x', 'NoteBook', '26S9BV1', 'X', 'Inspiron 3420', 'Dell', 'x', 'x', 'x', 'x'),
('X', 'NoteBook', '54LJ3Z1', 'X', 'Inspiron 3437', 'Dell', 'X', 'X', 'X', 'x'),
('X', 'NoteBook', 'HV3MZ22', 'X', 'Vostro 5470', 'Dell', 'x', 'x', 'x', 'x'),
('x', 'NoteBook', 'B9L14S1', 'X', 'Inspiron N4110', 'Dell', 'x', 'x', 'x', 'x');

INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('X', 'NoteBook', 'SCGS371OVR', 'X', 'HP 240 G4', 'HP', 'X', 'X', 'X', 'x'),
('umoterminalesgu', 'Workstation', '3X9ZDN1', 'X', 'Optiplex 780', 'Dell', 'x', 'x', 'x', 'x'),
('X', 'NoteBook', '8MR9BV1', 'X', 'Inspiron 3420', 'Dell', 'Intel Core I5-3210m', '6', 'HDD', '750'),
('X', 'NoteBook', 'J1763X2', 'X', 'x', 'Dell', 'Intel Core I7-8650u', '8', 'SSD', '256'),
('x', 'Desktop', 'BVP4CX1', 'x', 'Optiplex 9010', 'Dell', 'Intel Core I7-3770', '8', 'HDD', '500'),
('X', 'NoteBook', '763HHW1', 'X', 'Inspiron 3421', 'Dell', 'Intel Core I5-3337u', '4', 'HDD', '500'),
('X', 'NoteBook', '5CG5371DVR', 'X', '240 G4 Notebook Pc', 'Hewlett-Packard', 'Intel Core I5-5200u', '8', 'HDD', '500'),
('X', 'NoteBook', '5YKNKW1', 'X', 'Inspiron 3421', 'Dell', 'Intel Core I5-3317u', '4', 'HDD', '500'),
('X', 'Desktop', '1FQTBY1', 'X', 'Vostro 270s', 'Dell', 'Intel Core Ci3-3220', '4', 'HDD', '1024'),
('X', 'Desktop', '2 BE FILLED BY OEMx', 'X', 'H61m-Ds2', 'Gigabyte Technology Co', 'Intel Core I3-2100', '4', 'HDD', '500'),
('X', 'Desktop', 'DKLSFX1', 'X', 'Optiplex 7010', 'Dell', 'Intel Core I5-3470', '4', 'HDD', '500'),
('X', 'Desktop', 'x9', 'X', 'Dh55tc', 'ElectrÛnica Qbex', 'Intel Core I5 650', '4', 'HDD', '500'),
('X', 'Desktop', 'x10', 'X', 'x', 'x', 'Intel Core 2 Duo', '3', 'HDD', '500');

INSERT INTO equipos (nombre_equipo, categoria, serial, sistema_operativo, modelo, fabricante, procesador, ram, tipo_almacenamiento, capacidad_almacenamiento) VALUES
('X', 'Desktop', 'fcwb52701658', 'X', 'D915gvwb', 'Intel', 'Intel Pentium 4', '4', 'HDD', '500'),
('X', 'NoteBook', '9BPP432', 'X', 'Latitude 3440', 'Dell', 'Intel Core I5-4210u', '8', 'HDD', '500'),
('X', 'Desktop', 'x6', 'X', 'Iap-420', 'Hewiett-Packard', 'Intel Core2 Duo 4', '4', 'HDD', '500'),
('X', 'Desktop', 'x7', 'X', '3598a7s', 'Lenovo', 'Intel Core I3-2120', '4', 'HDD', '500'),
('X', 'NoteBook', 'x8', 'X', '420', 'Hewlett-Packard', 'por verificar', '4', 'HDD', '500'),
('X', 'Desktop', 'MJMWNXL', 'X', 'ThinkCentre M71e', 'Lenovo', 'x', 'x', 'x', 'x'),
('X', 'Desktop', '8NK78V1', 'X', 'Vostro 260s', 'Dell', 'Intel Core I3-2120', '6', 'HDD', '1024'),
('X', 'Desktop', 'F4X8DZ1', 'X', 'Optiplex 7010', 'Dell', 'Intel Core I5-3470', 'X', 'HDD', '500'),
('X', 'Desktop', 'TO BE FILLED BY OEM', 'X', 'H61m-k', 'ASUS', 'Intel Core I3-2100', 'X', 'X', 'x')
