/*
  This is the geb configuration file.
 */

import org.openqa.selenium.firefox.FirefoxDriver

driver = {new FirefoxDriver()}

environments {
  firefox {
    driver = {new FirefoxDriver()}
  }
}