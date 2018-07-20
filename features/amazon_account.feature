Feature: Account Creation
  as a User
  I want to be able to sign up
  So that i can login to Amazon
  and buy their wonderful products

  Scenario: If I input incorrect a password that is too short I will recieve the correct error message
  Given Amazon home page
  And I move to the accounts page
  When i proceed to register a new account
  And I input correct name
  And I input correct email
  And I input incorrect password details
  And I input correct re-enter password details
  And press signup
  Then I receieve the coresponding error
  Scenario: if I input incorrect details for email i will recieve the correct error message
  Given Amazon home page
  And I move to the accounts page
  When i proceed to register a new account
  And I input correct name
  And I input incorrect email
  And I input correct password details
  And I input correct re-enter password details
  And press signup
  Then I receieve the coresponding error

  Scenario: if I input different values for password and re-enter password i will recieve the correct error message
  Given Amazon home page
  And I move to the accounts page
  When i proceed to register a new account
  And I input correct name
  And I input correct email
  And I input correct password details
  And I input incorrect re-enter password details
  And press signup
  Then I receieve the coresponding error
  Scenario: if I input correct details that have not been used my account should be created
  Given Amazon home page
  And I move to the accounts page
  When i proceed to register a new account
  And I input correct name
  And I input correct email
  And I input correct password details
  And I input correct re-enter password details
  Then my accont is created and i am now logged in
  Scenario: if I input correct details but my account have been created
  Given Amazon home page
  And I move to the accounts page
  When i proceed to register a new account
  And I input correct name
  And I input correct email
  And I input correct password details
  And I input correct re-enter password details
  Then i should receieve an error
