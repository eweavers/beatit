
ADMINPANEL
To test this application you must navigate to the 
adminpanel folder in the CMD using the cd command if you are on windows
once you have navigated to the folder you must run the command 
$ symfony server:start
OR
$ php bin/console server:start
this will run the test developmental server (You will need wamp running all services)
To access this server you will have to visit localhost:8000 in your web browser.
use the URL localhost:8000/login to use the admin panel

Username: Admin
Password: test

FRONTEND

//////////////////////////////////////////////////////////////////////
{%#!DONT CHANGE THE FOLDERCHANGE AS DOMAINLOCK LOOKS AT FOLDERNAME!#%}
//////////////////////////////////////////////////////////////////////


Make a new database and name it timetobeat and import the sql file provided

This mobile app calculates all of the users submissions to the home page, users will submit a number in hours. 

To test all submission aspects of the assignment you must be logged in test user is

Username: Admin
Password: Test1

When making an account your password must have one capital letter and a number, all user feedback is provided in
popup toasts

Check the help doc in the settings for anything related to forms

TECHNOLOGIES
Materialise CSS - layout framework - both back end and front end
Symfony 4 - architectural framework - admin panel
PHP 7.3.1 as symfony requires PHP 7 or above

FUNCTIONALITY IN RELATION
In the original plan I was planning that when you click on a game details link it will take you to a new page 
with the details but I thought it would be more efficient and faster 
if the game details would show and hide under each game card. There are no functions that I removed from the plan but I added
the ability to submit a game to gamerequests with a thumbnail picture. All functions that have been implemented in the app
are working.

ROADMAP
I wish to add a seamless way for the admin to add games from the game requests without having to copy paste the data.
In the future I want to improve the user experience by making the UI as easy to navigate as possible 
while also keeping the nice look to it. I would make the website look less basic in 
design and make elements more aesthetically pleasing. I would also add more complex forms that 
would output live errors without having to refresh. Another feature that is planned to be added would be a feature where
users can see every submission they have done and they have the choice to delete it, edit and etc.
