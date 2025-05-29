Feature: Lihat Detail Data Tanah di Halaman Peta

  As a Super Admin
  I want to melihat detail informasi tanah melalui tampilan peta
  So that saya dapat mengecek lokasi dan informasi secara visual

  Background:
    Given Super Admin sudah login dan berada di halaman Peta

  Scenario: TC-11 - Show detail tanah dengan role yang sesuai
    When Super Admin menekan marker tanah pada peta dengan ID "T003"
    Then Sistem menampilkan informasi detail tanah yang dipilih
    And Detail ditampilkan secara lengkap di sisi layar atau popup

  Scenario: TC-12 - Show detail tanah dengan role atau data yang tidak sesuai
    Given Tidak ada data tanah yang tersedia untuk ditampilkan
    When Super Admin menekan area kosong atau marker yang tidak valid
    Then Sistem tidak menampilkan tampilan informasi tanah
    And Sistem menampilkan pesan "Data tidak tersedia" atau tidak terjadi apa-apa
