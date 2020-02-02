package com.hrms.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import com.hrms.testbase.BaseClass;
public class ReportsPageWebElements {
    
    @FindBy(id="search_search")
    public WebElement searcBox;
    
    @FindBy(className="searchBtn")
    public WebElement searchBtn;
    
    @FindBy(className="reset")
    public WebElement resetBtn;
    
    @FindBy(id="btnAdd")
    public WebElement addBtn;
    
    @FindBy(id="btnDelete")
    public WebElement deleteBtn;
    
    @FindBy(xpath="//table/tbody/tr/td[2]")
    public WebElement validSearchResult;
    
    @FindBy(xpath="//table/tbody/tr/td")
    public WebElement invalidSearchResult;
    
    public ReportsPageWebElements() {
        PageFactory.initElements(BaseClass.driver, this);
    }
    
    
    
}
