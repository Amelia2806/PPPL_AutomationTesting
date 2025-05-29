Feature: Hapus Data Tanah

  As a Super Admin
  I want to menghapus data tanah yang sudah tidak relevan
  So that daftar data tanah tetap terjaga dan akurat

  Background:
    Given Super Admin sudah login dan berada di halaman Kelola Tanah

  Scenario: TC-07 - Hapus data tanah dengan konfirmasi
    When Super Admin memilih data tanah dengan ID "T001"
    And Super Admin menekan tombol "Hapus"
    And Sistem menampilkan pop-up konfirmasi penghapusan
    And Super Admin menekan tombol "Hapus" pada konfirmasi
    Then Sistem menampilkan pesan "Data tanah berhasil dihapus"
    And Data tanah tidak lagi muncul di daftar tanah pada halaman Kelola Tanah

  Scenario: TC-08 - Batal menghapus data tanah
    When Super Admin memilih data tanah dengan ID "T001"
    And Super Admin menekan tombol "Hapus"
    And Sistem menampilkan pop-up konfirmasi penghapusan
    And Super Admin menekan tombol "Batal" pada konfirmasi
    Then Sistem tidak menghapus data
    And Data tanah tetap ditampilkan dalam daftar tanah
