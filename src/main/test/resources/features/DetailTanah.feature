Feature: Lihat Detail Data Tanah

  As a Super Admin
  I want to melihat informasi lengkap dari data tanah
  So that saya dapat memverifikasi detail data yang tersimpan

  Background:
    Given Super Admin sudah login dan berada di halaman "Kelola Tanah"

  Scenario: TC-09 - Melihat detail data tanah yang tersedia
    When Super Admin memilih salah satu data tanah dengan ID "T002"
    And Super Admin menekan tombol "i" untuk melihat detail informasi tanah
    Then Sistem menampilkan informasi lengkap dari tanah tersebut
    And Data ditampilkan dengan benar sesuai ID "T002"

  Scenario: TC-10 - Gagal melihat detail data tanah karena tidak ada data
    Given Tidak ada data tanah yang tersedia pada halaman "Kelola Tanah"
    When Super Admin mencoba menekan tombol "i"
    Then Sistem tidak menampilkan detail informasi tanah
    And Sistem menampilkan pesan "Data tidak tersedia"
