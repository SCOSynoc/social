# social

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- This is social media application  created with firebase authentication , graphql apollo server and mongodb for storing data
  also we have use mongoose for interacting with mongodb, and api are created with node.js 

- The riverpod is used for state management
- Services directory has services class which is created for graphql api integration this contains controller directory 
   repository director and api state directory. controller directory has controller class for interacting api with ui 
   repository directory has class in which apis are integrated and state directory has api states like loading, success etc.
- models directory has model data classes which are generated using freezed dart packages
- auth directory has classes with with auth controller and repository 
- screens directory has all the ui screens required for applications
- widgets directory has all the common widgets used in ui screens
- util directory has utility files like app colors and helper functions

- socila-graphql-api directory is the backend of the project
  - This has graphql directory which contains typedefs and resolvers for graphql api
  - models directory which has mongoose model schema for user and post
  - index.js for running the project
  - as this api are created with node modules so it contains node_modules directory