const {ApolloServer} = require("apollo-server")
const mongoose = require('mongoose')
const MONGOURI = "mongodb+srv://social:<Password>@cluster0.jkewjvn.mongodb.net/?retryWrites=true&w=majority";

const typeDefs = require('./graphql/typeDefs');
const resolvers = require('./graphql/resolvers');

const server = new ApolloServer({
    typeDefs,
    resolvers
})

mongoose.connect(MONGOURI, {useNewUrlParser:true})
      .then(() => {
          console.log("MongoDB Connection Successful")
          return server.listen({port:5000})
      })
      .then((res) => {
         console.log(`Server running at ${res.url}`)
      });

      

