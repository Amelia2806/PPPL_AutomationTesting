package stepDef;

import org.junit.jupiter.api.BeforeAll;
import org.openqa.selenium.WebDriver;
import org.example.pages.loginPage;
import org.openqa.selenium.chrome.ChromeDriver;

public class loginStepDef {

    static WebDriver driver;
    loginPage login;

    @BeforeAll
    public static void openBrowser(){
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }

}
