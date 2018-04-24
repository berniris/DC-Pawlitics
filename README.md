# DC-Pawlitics
#### **DC Fake Mews**

# User Story 
I created an app based off my friend Masha's Instagram account, [DC Fake Mews](https://www.instagram.com/dcfakemews/). Masha collects and posts pictures of cats we know and creates political blurbs in the voice of the cat. We want [DC Fake Mews](https://www.instagram.com/dcfakemews/) to go viral so I am creating a web app version to increase exposure and get non Instagram folks following. 

### App Flow Description

 The user first arrives at a landing page containing login/sign-up links at the top, DC Pawlitics title in the middle and DC Fake Mews as the subtitle. 
 
#### Underneath are three links to navigate to the CRUD peices:
  1. Meet the Cats - takes you to a page which displays all the cats and a link to their indviidual profiles.
  2. Kitty Op-Eds - the individual profile pages will contain the picture of the cat side by side with their opinion blurb and the hashtags to describe, and in the future, search for posts. 
  3. Submit Your Feline - links to a form to submit your cat to be featured on DC Fake Mews. 

# Coming Soon

Login/sign up link so that only authorized users can create and edit cats. 
A separate portal for users to submit their cat. 

Ideally, I would like the user to be able to register for an account which will assign them a portal where they can add and delete favorite cats to view later. The registration form will require them to select a username and password for return visits. 

# Technologies:
1. Node
2. Express.js 

 *Package Modules:
 1. PG-Promise - makes creating apps with Node & SQL simpler
 2. Morgan - provides us with more useful errors for speedier debugging
 3. EJS - templating language for creating markup in express
 4. Method Override 
 5. Body Parser
 6. Nodemon

3. PostgreSQL 

# Install Instructions:
Clone the repo and once in the folder *npm i* to install dependencies. Run the command *npm run dev* to 

# Data Structure 

## Table 1
#### Table Name: Affiliation
##### Data:
* id 
* name

## Table 2 
#### Table name: Blurbs
##### Data:
* id
* name
* img_url
* blurb
* hashtags
* cissues
* affiliation_id


# Wireframes

![img_1694 2](https://git.generalassemb.ly/storage/user/9780/files/0c7ea7c4-4345-11e8-9886-948df9e2eca1)
![img_1695 2](https://git.generalassemb.ly/storage/user/9780/files/2e3c209e-4345-11e8-8141-53efb931acae)
![img_1696 2](https://git.generalassemb.ly/storage/user/9780/files/35b34d7a-4345-11e8-972e-dbb0c35060cb)

# Pre-MVP:

## Potential Challenges/Roadblocks

### 1. Time mangement!
I plan to set benchmarks for myself (see Time estimates below) and also follow the practice of starting small, testing it out to see if it works, and then moving on to the next peice. I think this will help me alot with time management because it will decrease my debugging time if I can isolate issues quickly. 

### 2. Fufilling Delete CRUD Requirement. 
Ideally I don't want the user to have the ability to delete cat posts just for the sake of fufilling the requirement. Therefore, I need to have a way for them to have an account to save favorite cats which can be deleted after. This gets into authentication which is something I wanted to focus on post-MVP. I might just have to create a way for the user to delete from the database which doesn't really make sense but time might not allow me another choice. :/

# Time Estimates - *By End of Day:*
 ### *Thursday* 
 1. Completed pseudo code of all pages. 
 2. Obtain all pictures for app. 
 3. Create schema for database and insert all data. 
 4. Server/database config and basic setup done.
 5. Remember to push completed work. 
 ### *Friday*
1. Completed and tested model.
2. Remember to push model. 
 ### *Saturday* 
1. Completed Controller
2. Sizeable dent in Router.
 ### *Sunday*
 1. Completed Router by early part of day. 
 2. Completed 'ejs' files and begin styling latter part of day. 
 ### *Monday* - Hopefully dedicated solely to finishing touches: 
 1. Push final completed MVP. 
 2. In the unlikely event I have extra time, create a new branch to implement post MVP features like:
 * authorization
 * authentication
 * user portal creation
 * api useage 
 * jquery effects
 
 
