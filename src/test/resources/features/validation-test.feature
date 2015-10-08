Feature: Validation test

  Scenario: If you are not a member
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    When I click on link with css "fa-sign-in"
    And I click on link with text "Join"
    And I type "testarefirstname" into field with id "firstName"
    And I type "testarelastname" into field with id "lastName"
    And I type "testare1984@gmail.com" into field with id "emailadd"
    And I type "testare1984" into field with id "userName"
    And I type "12345678" into field with id "password"
    And I type "QTOUJ" into field with id "secImage"
    And I click on button with text "Submit"
    Then I should see an element with text "Join"

  Scenario: My account login successful
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    When I click on link with css "fa-sign-in"
    And I type "testare" into field with id "Username"
    And I type "remussic" into field with id "Password"
    And I click on button with text "Submit"
    Then I should see an element with text "Welcome testarefirstname testarelastname"

  Scenario: Logout
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    When I click on link with css "fa-sign-in"
    And I type "testare" into field with id "Username"
    And I type "remussic" into field with id "password"
    And I click on button with text "Submit"
    And I click on link with css "fa-sign-out"
    Then I should see an element with text "Logout"

  Scenario: Members Area
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    When I click on link with css "fa-sign-in"
    And I type "testare" into field with id "Username"
    And I type "remussic" into field with id "Password"
    And I click on button with text "Submit"
    Then I should see an element with text "Members Area"

#  Scenario: Login failed because of wrong username and password
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    When I click on link with css "fa-sign-in"
#    And I type "testare1" into field with id "Username"
#    And I type "remussic1" into field with id "Password"
#    And I click on button with text "Submit"
#    Then I should see an element with text "User not found or password incorrect. Please try again."
#
#  Scenario: Login failed because of wrong password
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    When I click on link with css "fa-sign-in"
#    And I type "testare" into field with id "Username"
#    And I type "remussic1" into field with id "Password"
#    And I click on button with text "Submit"
#    Then I should see an element with text "User not found or password incorrect. Please try again."
#
#  Scenario: Login faled because of wrong username
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    When I click on link with css "fa-sign-in"
#    And I type "testare1" into field with id "Username"
#    And I type "remussic" into field with id "Password"
#    And I click on button with text "Submit"
#    Then I should see an element with text "User not found or password incorrect. Please try again."
#
#  Scenario: Login failed because the user leaves empty username field or Password field
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#  When I click on link with css "fa-sign-in"
#    And I click on button with text "Submit"
#    Then I should see an element with text "Your username is required."
#    Then I should see an element with text "Password is required."
#
#  Scenario: Login failed because user leaves empty Password field
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    When I click on link with css "fa-sign-in"
#    And I type "testare" into field with id "Username"
#    And I click on button with text "Submit"
#    Then I should see an element with text "Password is required."
#
#  Scenario:Scenario: Login failed because user leaves empty username field
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    When I click on link with css "fa-sign-in"
#    And I type "remussic" into field with id "password"
#    And I click on button with text "Submit"
#    Then I should see an element with text "Your username is required."


#  Scenario: Update Profile
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    When I click on link with css "fa-sign-in"
#    And I type "testare" into field with id "Username"
#    And I type "remussic" into field with id "Password"
#    And I click on button with text "Submit"
#    And I click on link with text "Update Profile"
#    #And I select "Mr." from dropdown menu with id "Salutation"
#    And I type "testarefirstname" into field with id "firstName"
#    And I type "testarelastname" into field with id "lastName"
#    And I type "+864747474774" into field with id "phone"
#    And I type "testare1985@gmail.com" into field with id "email"
#    And I type "Str.Avram Iancu nr.8" into field with id "address1"
#    And I type "Str.Mihai Viteazu nr.9" into field with id "address2"
#    And I type "Cluj-Napoca" into field with id "city"
#    And I type "400451" into field with id "zip"
#    #And I select "WA" from dropdown menu with name "TG_PH_STATE"
#    And I type "Romania" into field with id "joinCountry"
#    And I click on button with text "Submit"
#    Then I should see an element with text "Your message has been sent. Thank you."

  Scenario: Change Password
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    When I click on link with css "fa-sign-in"
    And I type "testare" into field with id "Username"
    And I type "remussic" into field with id "Password"
    And I click on button with text "Submit"
    And I click on link with text "Change Password"
    And I type "remussic" into field with id "oldpw"
    And I type "remussic" into field with id "newpw"
    And I type "remussic" into field with id "confirmpw"
    And I click on link with text "Change Password"
    Then I should see an element with text "Change Password"

#  Scenario: Change Password failed because the user leaves empty Old Password
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    When I click on link with css "fa-sign-in"
#    And I type "testare" into field with id "Username"
#    And I type "remussic" into field with id "Password"
#    And I click on button with text "Submit"
#    And I click on link with text "Change Password"
#    And I type "remussic" into field with id "Password"
#    And I type "remussic" into field with id "confirmpw"
#    And I click on link with text "Change Password"
#
#  Scenario: Change Password failed because the user write wrong  Old Password
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    When I click on link with css "fa-sign-in"
#    And I type "testare" into field with id "Username"
#    And I type "remussic" into field with id "Password"
#    And I click on button with text "Submit"
#    And I click on link with text "Change Password"
#    And I type "asdfd" into field with id "oldpw"
#    And I type "remussic" into field with id "confirmpw"
#    And I type "remussic" into field with id "Password"
#    And I click on link with text "Change Password"
#
#  Scenario: Change Password failed because the user leaves empty New Password field
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    And I click on link with css "fa-sign-in"
#    And I type "testare" into field with id "Username"
#    And I type "remussic" into field with id "Password"
#    And I click on button with text "Submit"
#    And I click on link with text "Change Password"
#    And I type "remussic" into field with id "oldpw"
#    And I type "remussic" into field with id "confirmpw"
#    And I click on link with text "Change Password"
#
#  Scenario: Change Password failed because the user leaves empty Confirm New Password field
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    And I click on link with css "fa-sign-in"
#    And I type "testare" into field with id "Username"
#    And I type "remussic" into field with id "Password"
#    And I click on button with text "Submit"
#    And I click on link with text "Change Password"
#    And I type "remussic" into field with id "Password"
#    And I click on link with text "Change Password"

  Scenario: User Account History
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    And I click on link with css "fa-sign-in"
    And I type "testare" into field with id "Username"
    And I type "remussic" into field with id "Password"
    And I click on button with text "Submit"
    And I click on link with text "User Account History"
    Then I should see an element with text "Account History"

#  Scenario: Logout
#    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
#    And I click on link with css "fa-sign-in"
#    And I type "testare" into field with id "Username"
#    And I type "remussic" into field with id "Password"
#    And I click on button with text "Submit"
#    And I click on link with text "Logout"
#    Then I should see an element with text "Logout"

  Scenario: Home
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    And I click on link with text "Home"
    Then I should see an element with text "Metaceutical Marketing"

  Scenario: About Us
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    And I click on link with text "About Us"
    Then I should see an element with text "About Us"

  Scenario: Healthcare Professionals
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    And I click on link with text "Healthcare Professionals"
    Then I should see an element with text "Healthcare Professionals"

  Scenario: Products/Services
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    And I click on link with text "Products/Services"
    Then I should see an element with text "Products/Services"
    And I mouse over on element with text "Products/Services"
    And I click on link with text "Compound Pharmacy"
    Then I should see an element with text "Compound Pharmacy"
    And I mouse over on element with text "Products/Services"
    And I click on link with text "DNA/Toxicology"
    Then I should see an element with text "DNA/Toxicology"
    And I mouse over on element with text "Products/Services"
    And I click on link with text "HRMS"
    Then I should see an element with text "HRMS"
    And I mouse over on element with text "Products/Services"
    And I click on link with text "NSS Device"
    Then I should see an element with text "NSS Device"
    And I mouse over on element with text "Products/Services"
    And I click on link with text "Heartwise"
    Then I should see an element with text "Heartwise"

  Scenario: Additional Services
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    And I click on link with text "Additional Services"
    Then I should see an element with text "Additional Services"
    And I mouse over on element with text "Additional Services"
    And I click on link with text "Responsive Website Design"
    Then I should see an element with text "Responsive Website Design"
    And I mouse over on element with text "Additional Services"
    And I click on link with text "SEO"
    Then I should see an element with text "SEO"
    And I mouse over on element with text "Additional Services"
    And I click on link with text "Social Media"
    Then I should see an element with text "Social Media"
    And I mouse over on element with text "Additional Services"
    And I click on link with text "Reputation Management"
    Then I should see an element with text "Reputation Management"
    And I mouse over on element with text "Additional Services"
    And I click on link with text "Content Writing"
    Then I should see an element with text "Content Writing"
    And I mouse over on element with text "Additional Services"
    And I click on link with text "Marketing Campaigns"
    Then I should see an element with text "Marketing Campaigns"
    And I mouse over on element with text "Additional Services"
    And I click on link with text "Lead Management"
    Then I should see an element with text "Lead Management"
    And I mouse over on element with text "Additional Services"
    And I click on link with text "Performance Reporting"
    Then I should see an element with text "Performance Reporting"

  Scenario: Blog
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    And I click on link with text "Blog"
    And I click on link with text "Read More "
    Then I should see an element with text "September is Pain Awareness Month"

  Scenario: Contact Us
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    And I click on link with text "Contact Us"
    And I click on link with text "Home"
    Then I should see an element with text "Metaceutical Marketing"

  Scenario: Contact Us Information
    Given I open url "http://metaceuticals.com/?SERVICE=HOME_NEW"
    And I click on link with text "Contact Us"
    And I type "adsafasd" into field with id "firstName"
    And I type "fdadfsasd" into field with id "InputLastname"
    And I type "testare1985@gmail.com" into field with id "InputEmail"
    And I type "+0995477854854" into field with id "InputPhone"
    And I type "This message is for testing" into textarea with id "InputMessage"
    And I wait 10 seconds