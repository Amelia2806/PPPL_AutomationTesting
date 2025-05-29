Feature: Logout dari Sistem

  As a user
  I want to keluar dari sistem setelah selesai menggunakan aplikasi
  So that akun saya tetap aman dan sesi saya diakhiri

  Background:
    Given User sudah login ke dalam sistem

  Scenario: TC-013 - Logout dengan akun dan akses yang sesuai
    When User mengakses menu profil
    And User menekan tombol "keluar"
    Then Sistem mengakhiri sesi login
    And User diarahkan kembali ke halaman login

  Scenario: TC-014 - Gagal logout karena tombol keluar tidak tersedia
    Given User berada di halaman yang tidak memiliki tombol logout
    When User mencoba mencari dan menekan tombol "keluar"
    Then Sistem tidak menampilkan tombol logout
    And User tidak dapat melakukan proses logout dari halaman tersebut
