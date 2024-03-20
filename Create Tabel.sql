CREATE DATABASE db_repositori;
USE db_repositori;

CREATE TABLE data_prodi(
id INT AUTO_INCREMENT PRIMARY KEY,
kode_prodi CHAR(5),
nama_prodi VARCHAR(100));

DESCRIBE data_prodi;

CREATE TABLE data_dosen(
nip VARCHAR(30) NOT null PRIMARY KEY,
nama_lengkap VARCHAR(100),
prodi_id INT,

FOREIGN KEY (prodi_id) REFERENCES data_prodi(id));

DESCRIBE data_dosen;

CREATE table data_dokumen(
id INT UNSIGNED NOT NULL PRIMARY KEY auto_increment,
nip VARCHAR(30),
type_dokumen ENUM('file', 'url') NOT NULL,
nama_dokumen VARCHAR(255),
nama_file VARCHAR(255),

FOREIGN KEY (nip) REFERENCES data_dosen(nip) 
);

DESCRIBE data_dokumen;