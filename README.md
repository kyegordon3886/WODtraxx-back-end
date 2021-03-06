# **WODtraxx**
## **A Simple Workout Logger**
### *This is the back end api for the app*

### **Description:**
Welcome to WODtraxx! This is a full-stack development of  a single page application designed for users to create and log their workouts. It is simple and easy to use, and allows users to not only create and view their workouts, but also to see all the workouts any user has created, if they so choose to try them. It is created as a workout sharing platform in a way. Version one is simple, and without a lot of different user abilities. However, version two is planned to have commenting abilities for users to comment their scores/stats on workouts, as well as create usernames for themselves.

### **Completion/Bug Fixes**
The basic app was completed in roughly 3 days, and had a few user-facing bugs to smooth out before deployment. The main and last bug fix upon deploying the application was the user workout display. Once a user would show all workouts, or look up a workout, and then sign out, the information and delete/update buttons would remain on screen, however they were useless, as one needed a user token to make changes, but still irritating none-the-less. The matter was solved however with some hide and show methods in the UI having to be placed properly.

In the future versions of this app, I would like to employ the use of modals for text boxes when adding, updating, or commenting on workouts, as well as making sign-up/sign-in by user name possible. The comments will have specific user relationships so you will be able to see who said/did what. 

### **Deployment**

This app was deployed using GitHub and Heroku. The back-end server-side is deployed to Heroku.

### **User Stories:**
The user should be able to:

* sign up with their email
* sign into the app
* update their password if necessary
* create/add workouts with a name, type, and description
* look up one/all workouts that they have added of that have been added by others
* edit/update workouts, but only workouts they have added
* delete workouts with one click, but only workouts that they have added
* log out/sign out of the app

### **Technologies Used:**
* Node
* NPM
* Express
* Mongoose
* Heroku
* BCrypt
* Cors
* Passport

### **Entity Relationship Diagram (ERD):**
[ERD 1](https://imgur.com/rmoL6dR)

### **Link to Application:**
[WODtraxx App](https://kyegordon3886.github.io/WODtraxx-client/)