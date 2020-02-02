package com.hrms.steps;

import org.junit.Assert;

import com.hrms.pages.DashboardPageElements;
import com.hrms.pages.ReportsPageWebElements;
import com.hrms.utils.CommonMethods;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ReportSteps extends CommonMethods{
    
    ReportsPageWebElements reports;
    
    @Given("I navigated to the Reports Page")
    public void i_navigated_to_the_Reports_Page() {
        DashboardPageElements dashboard=new DashboardPageElements();
        dashboard.navigateToReports();
    }
    
    @When("I enter an invalid {string} report")
    public void i_enter_an_invalid_report(String string) {
        reports=new ReportsPageWebElements();
        sendText(reports.searcBox, string);
    }
    @When("I click search button")
    public void i_click_search_button() {
        click(reports.searchBtn);
    }
    @Then("I see {string} message")
    public void i_see_message(String string) {
     reports.invalidSearchResult.isDisplayed();
    }
    
    @When("I enter an valid {string} report")
    public void i_enter_an_valid_report(String string) {
        reports=new ReportsPageWebElements();
        sendText(reports.searcBox, string);
    }
    @Then("I see the search {string}")
    public void i_see_the_search(String string) {
        reports.validSearchResult.isDisplayed();
    }
}
