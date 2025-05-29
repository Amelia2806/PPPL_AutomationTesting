Feature: Login

  As a Super Admin
  I want to log into the system
  So that I can mengakses dashboard sesuai role

  Background:
    Given Super Admin memiliki akun dengan email "<email>" dan password "<password>"

  Scenario Outline: TC-01 - Login dengan data yang valid
    When Super Admin membuka halaman login
    And Super Admin memasukkan email "<email>" dan password "<password>"
    And Super Admin menekan tombol "Masuk"
    Then Super Admin berhasil diarahkan ke dashboard sesuai role

    Examples:
      | email                | password    |
      | jaygantenk@gmail.com | jaycuu123   |
      | admin@example.com     | adminpass   |
      | user1@mail.com       | user1pass   |

  Scenario Outline: TC-02 - Login dengan password yang tidak sesuai
    When Super Admin membuka halaman login
    And Super Admin memasukkan email "<email>" dan password "<wrong_password>"
    And Super Admin menekan tombol "masuk"
    Then Sistem menampilkan pesan error "Email, Username, atau password salah"

    Examples:
      | email                | wrong_password |
      | jaygantenk@gmail.com | jay456         |
      | admin@example.com     | wrongpass      |
      | user1@mail.com       | 123456         |
