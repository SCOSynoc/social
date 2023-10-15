const { gql } = require("apollo-server")

module.exports = gql`
type User {
    userId: String,
    name:String,
    email: String,
    mobile: String,
    profilePic:String,
    followers: [String],
    following:[String],
    createdAt: String,
}

type Post {
    userId: String,
    captions:String,
    username: String,
    likes: [String],
    createdAt: String,
    postedBy:String,
    imageUrl:String,
    tags:[String]
}

input userInput {
    name:String,
    email:String,
    mobile:String,
    profilePic:String,
}

input likePost {
    likes:[String]
}

input postInput {
    captions:String,
    username: String,
    postedBy:String,
    imageUrl:String,
    tags:[String]
}

input FollowingInc {
    userId:String
    following : [String]
}

input FollowerInc {
    userId:String
    followers : [String]
}

input searchInput {
    name : String
}

type Query {
    getUsers:[User]
    getPosts(id:String,amount:Int):[Post]
    searchUser(name:String):[User]
    
}

type Mutation {
    createUser(userbody:userInput): User!
    createPost(postBody:postInput): Post!
    editUserFollowing(following: FollowingInc) : Boolean
    unFollowUser(follower: FollowerInc): Boolean
    
}

`