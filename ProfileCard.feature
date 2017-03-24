﻿
TITLE : profile card (page with personal information)
As a user
I want to see the profile card of speakers includes name,related works and picture(photo)
so that i can get outline of the conference speakers

Feature: Profile Card

It should deliver the personal information 
If there is no link, it has to deliver the information like not available
This card also continuously delivers the updated information

Scenario 1: Keywords found	

	Given the personal information 
	And the information is valid
	And result is found
        when the user request the keyword 
        Then the personal information related to the keyword is found
	And keyword filters the content 
        And it show's the information

scenario 2: Keywords not found

        Given the personal information 
	And the information is valid
	And result is not found
        When the user requested the keyword 
	Then the website should notify the user that no result found
        And no personal informations results are shown

scenario 3: Invalid search keywords

        Given the profile information
	And the information is not valid
        When the user request the keyword
        Then the website should notify the user that the information is not valid
	And no personal informations results are shown

scenario 4: An error occours

	Given the personal information 
	And the information is valid
	And result is available
	And it occours an error during the search
        when the user request the keyword 
        Then the website notifies the user that an error occour
	And no personal informations results are shown
	And the website notify the user to try again




	 
	

	
		
	
	
