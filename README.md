# CampRecky

Nafisa Hasan.34, Stephanie Hayden.159, Daniel Kennon.10, Christine Li.4714, Pegah Rashidnia.1

Camp Recky Registration Platform

Prospective campers and their parents can view a list of available camps at Camp Recky for Summer 2017. If they are interested in participating in any camps, their parents are able to go through a registration process online and sign their kid(s) up for camps of their choosing. 

A list of requirements along with additional medical forms and a paper version of the registration form are also available.
The latest (2017) Camp Recky parent guide was used as a basis for camp information and requirements (themes, types of camps, ect), but project specific requirements under the project page (age) was prioritized first.

#### Ruby version
  - 2.3.11
	
#### Initialization steps:
 - $cd camp_recky
 - $bundle install
 - $rake db migrate
 - $rake rails

#### To run:
 - $rails server
Then, navigate to the link provided in Firefox or Chrome browser.

#### Deployed: 
 - http://camprecky2017.herokuapp.com/

#### Features:
- Support for multiple camps 
     - Each camp's session is 1 week long and belongs to a particular category and has a theme.
     - Each camp has a age requirement based on most recently completed school grade and a registration limit.
 
- Registration process
- When an authorized guardian/parent would like to enroll their child(ren) necessary camper account information includes:
 
	- Camper information which includes name, geneder, and birthday
	- Emergency contact information
	- Guardians authorized and not authroized for pick up
  
#### Extensions:
 - Sorting of available camps by all camp information (age requirements, location, etc)
 - Waitlist for camps

#### Licensing:
- License: http://www.opensource.org/licenses/mit-license.php
	- JavaScript Sortable
