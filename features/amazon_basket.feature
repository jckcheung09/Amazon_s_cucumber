Feature: Shopping cart
  As a user
  I want to be able to add or remove items from the basket
  and check out when I have all the items i want
  Scenario: Adding an item to basket
  Given Amazon home page
  And i navigate to an item's page
  And add it to basket
  And i navigate to the basket
  Then the item should be in the basket
  Scenario: Adding an item to basket
  Given Amazon home page
  And i navigate to an item's page
  And add it to basket
  And navigate to another item's page
  And add it to basket
  And i navigate to the basket
  Then all the items should be in the basket
  Scenario: Removing items from the basket
  Given Amazon home page
  And i navigate to an item's page
  And add it to basket
  And i navigate to the basket
  And remove the item
  Then the item should no longer be in the basket
  Scenario: check out
  Given Amazon home page
  And i navigate to an item's page
  And add it to basket
  And press checkout
  Then I should be taken to the checkout page
