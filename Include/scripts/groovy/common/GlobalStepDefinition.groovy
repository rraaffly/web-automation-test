package common
import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject

import com.kms.katalon.core.annotation.Keyword
import com.kms.katalon.core.checkpoint.Checkpoint
import com.kms.katalon.core.checkpoint.CheckpointFactory
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.testcase.TestCase
import com.kms.katalon.core.testcase.TestCaseFactory
import com.kms.katalon.core.testdata.TestData
import com.kms.katalon.core.testdata.TestDataFactory
import com.kms.katalon.core.testobject.ObjectRepository
import com.kms.katalon.core.testobject.TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI

import internal.GlobalVariable

import org.openqa.selenium.WebElement
import org.openqa.selenium.WebDriver
import org.openqa.selenium.By

import com.kms.katalon.core.mobile.keyword.internal.MobileDriverFactory
import com.kms.katalon.core.webui.driver.DriverFactory

import com.kms.katalon.core.testobject.RequestObject
import com.kms.katalon.core.testobject.ResponseObject
import com.kms.katalon.core.testobject.ConditionType
import com.kms.katalon.core.testobject.TestObjectProperty

import com.kms.katalon.core.mobile.helper.MobileElementCommonHelper
import com.kms.katalon.core.util.KeywordUtil

import com.kms.katalon.core.webui.exception.WebElementNotFoundException

import cucumber.api.java.en.And
import cucumber.api.java.en.Given
import cucumber.api.java.en.Then
import cucumber.api.java.en.When

class GlobalStepDefinition {
	@Given("user on the landing page")
	def stepOpenLandingPage() {
		WebUI.openBrowser(GlobalVariable.appUrl)
		WebUI.delay(10)
		WebUI.maximizeWindow()
	}

	@When("user click button icon (.*) in the header")
	def stepClickIconInHeader(String iconName) {
		if (iconName.equals("Magnifier")) {
			WebUI.click("Object Repository/Home Screen/Header/icon_Magnifier", FailureHandling.STOP_ON_FAILURE)
		} else if (iconName.equals("User")) {
			WebUI.click("Object Repository/Home Screen/Header/icon_User", FailureHandling.STOP_ON_FAILURE)
		} else if (iconName.equals("Cart")) {
			WebUI.click("Object Repository/Home Screen/Header/icon_Cart", FailureHandling.STOP_ON_FAILURE)
		} else if (iconName.equals("Help")) {
			WebUI.click("Object Repository/Home Screen/Header/icon_Help", FailureHandling.STOP_ON_FAILURE)
		}
	}
	
	@Then("user verify the web displays a login form")
	def stepVerifyDisplayLoginForm() {
		WebUI.verifyElementPresent("Object Repository/LOGIN_MODAL/modal_Login", 10, FailureHandling.STOP_ON_FAILURE)
	}
}