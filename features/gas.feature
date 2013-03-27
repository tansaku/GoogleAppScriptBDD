Feature: display assignment status prominently on homepage
  As a busy student
  So that I can quickly determine what outstanding assignments I have
  And so that I can quickly submit assignments
  I want the first thing I see to be the assignment management page
 
Background: assignments have been added to the database
 
  Given the following assignments exist
  | title				| week	| optional 	|
  | introduction post 		| 1 	| no		|
  | background questionnaire      | 1	| no		|
 
 # need student table and submission table
 # and logged in as some student?
 And I am on the home page
 
Scenario: view outstanding assignments
  I should see "You have completed the introduction post"
  I should see "You have not completed the background questionnaire"
 
Scenario: submit an outstanding assignment
 Given that I enter 'yes' into background_questionnaire textfield
 And click submit
 Then I should see "You have completed the background questionnaire"
 #And I should see "view your submission"	
 #And I should see "edit your submission"
