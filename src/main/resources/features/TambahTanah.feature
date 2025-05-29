Feature: Tambah Data Tanah

  As a Super Admin
  I want to menambahkan data tanah ke dalam sistem
  So that data tanah dapat disimpan dan ditampilkan pada sistem peta

  Background:
    Given Super Admin berada di halaman management data tanah

  Scenario: TC-03 - Tambah data tanah dengan data yang lengkap dan valid
    When Super Admin menekan tombol "Tambah Tanah"
    And Super Admin berada di halaman tambah data tanah
    And Super Admin mengisi form dengan data lengkap dan valid:
      | Nama Tanah          | Tanah A                    |
      | Luas Tanah          | 1000                       |
      | Detail Alamat       | Jalan Contoh No. 1         |
      | RT                  | 01                         |
      | RW                  | 02                         |
      | Padukuhan           | Padukuhan A                |
      | Status Tanah        | Aktif                      |
      | Status Kepemilikan  | Milik Sendiri              |
      | Tipe Tanah          | Sawah                      |
      | Foto Tanah          | foto.jpg                   |
      | Sertifikat Tanah    | sertifikat.pdf             |
      | Longitude           | 110.123456                 |
      | Latitude            | -7.123456                  |
      | Coordinate Polygon  | [[110.1,-7.1],[110.2,-7.2]] |
    And Super Admin menekan tombol "Tambah Tanah"
    Then Sistem menampilkan pesan "Data tanah berhasil ditambahkan"

  Scenario: TC-04 - Tambah data tanah dengan data yang tidak lengkap
    When Super Admin menekan tombol "Tambah Tanah"
    And Super Admin berada di halaman tambah data tanah
    And Super Admin mengisi form dengan data tidak lengkap:
      | Nama Tanah          | Tanah B        |
      | Detail Alamat       | Jalan B        |
      | RT                  | 03             |
      | RW                  | 04             |
      | Padukuhan           | Padukuhan B    |
      | Status Tanah        | Kosong         |
      | Status Kepemilikan  | Tidak Jelas    |
      | Tipe Tanah          | -              |
      | Foto Tanah          |                |
      | Sertifikat Tanah    |                |
      | Longitude           |                |
      | Latitude            |                |
      | Coordinate Polygon  |                |
    And Super Admin menekan tombol "Tambah Tanah"
    Then Sistem menampilkan pesan error "Data tanah tidak berhasil ditambahkan"
