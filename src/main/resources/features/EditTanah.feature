Feature: Edit Data Tanah

  As a Super Admin
  I want to mengedit data tanah
  So that informasi yang ditampilkan dapat diperbarui sesuai kondisi terbaru

  Background:
    Given Super Admin sudah login dan berada di halaman Kelola Tanah

  Scenario: TC-05 - Edit data tanah dengan informasi valid
    When Super Admin memilih data tanah yang ingin diedit
    And Super Admin menekan tombol Edit
    And Super Admin mengisi form edit dengan data baru yang valid:
      | Nama Tanah          | Tanah C                   |
      | Detail Alamat       | Jalan Update No. 1        |
      | RT                  | 05                        |
      | RW                  | 07                        |
      | Padukuhan           | Padukuhan C               |
      | Status Tanah        | Aktif                     |
      | Status Kepemilikan  | Hak Milik                 |
      | Tipe Tanah          | Pekarangan                |
      | Foto Tanah          | update.jpg                |
      | Sertifikat Tanah    | update_sertifikat.pdf     |
      | Longitude           | 110.234567                |
      | Latitude            | -7.234567                 |
      | Coordinate Polygon  | [[110.2,-7.2],[110.3,-7.3]]|
    And Super Admin menekan tombol "Ubah"
    Then Sistem menampilkan pesan "Data tanah berhasil diperbarui"
    And Data tanah yang telah diubah tampil dengan informasi terbaru di halaman Kelola Tanah

  Scenario: TC-06 - Edit data tanah dengan data tidak valid
    When Super Admin memilih data tanah yang ingin diedit
    And Super Admin menekan tombol Edit
    And Super Admin mengisi form edit dengan data yang tidak valid:
      | Nama Tanah          |                            |
      | Detail Alamat       |                            |
      | RT                  |                            |
      | RW                  |                            |
      | Padukuhan           |                            |
      | Status Tanah        |                            |
      | Status Kepemilikan  |                            |
      | Tipe Tanah          |                            |
      | Foto Tanah          |                            |
      | Sertifikat Tanah    |                            |
      | Longitude           |                            |
      | Latitude            |                            |
      | Coordinate Polygon  |                            |
    And Super Admin menekan tombol "Ubah"
    Then Sistem menampilkan pesan error seperti "Data tidak valid" atau "Kolom nama tanah tidak boleh kosong"
