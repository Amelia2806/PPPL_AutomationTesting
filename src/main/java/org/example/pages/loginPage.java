package org.example.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class loginPage {

    WebDriver driver;

    public loginPage(WebDriver driver){
        this.driver = driver;
    }

//    LOCATOR
    By fieldEmail = By.id("email");
    By fieldPassword = By.id("password");
    By btnMasuk = By.id("loginButton");

//    ACTION
    public void clickBtnLogin(){
        driver.findElement(btnMasuk).click();
    }

//    SETTER
    public void setFieldEmail(String query){
        driver.findElement(fieldEmail).sendKeys(query);
    }
    public void setFieldPassword(String query){
        driver.findElement(fieldPassword).sendKeys(query);
    }
}
