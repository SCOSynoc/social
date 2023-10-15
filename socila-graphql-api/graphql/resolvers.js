const { v4: uuidv4 } = require('uuid');
const Post = require('../models/post');
const User = require('../models/user')


module.exports = {

    Query : {

        async getUsers(_){
            return await User.find();
        },

        async getPosts(_, { id,amount}){
                   const user = await User.findOne({userId:id});
                   return await Post.find().sort({createdAt:-1})
                   .where("postedBy")
                   .in([...user.following])
                   .limit(amount)
        },

        async searchUser(_, {name}){
               return await User.find({name:{$regex: name, $options:"i"}})
        }

    },
     Mutation: {
        async createUser(_, {userbody:{name,email,mobile, profilePic}}) {
              const uuid = uuidv4();
              const createdUser = new User({
                userId: uuid,
                name: name,
                email: email,
                mobile: mobile,
                profilePic: profilePic,
                followers:[],
                following:[],
                createdAt: new Date().toISOString()         
        });
        const res = await createdUser.save();
        console.log(`heree response is ${res._doc}`)
        return {
            id: res.id,
            ...res._doc
        }},

        async createPost(_, {postBody:{username, captions, likes, imageUrl, postedBy, userId, tags}}) {
              const createdPost = new Post({
                     userId: userId,
                     username: username,
                     captions: captions,
                     likes : likes,
                     imageUrl: imageUrl,
                     postedBy: postedBy,
                     tags:tags,
                     createdAt: new Date().toISOString(),     
              });
              const res = await createdPost.save();
              console.log(`Here post response is ${res._doc}`)

              return {
                id : res.id,
                ...res._doc
              }
        },

        async editUserFollowing(_, {following:{userId,following}}){
                console.log(`Here the entered dta is ${userId} and ${following}`)
                const wasFollowed = await User.findOneAndUpdate({userId:userId},{$push:{following: following}})
                console.log(`Here the update dta is ${wasFollowed.email}`)
                const follower = await User.findOneAndUpdate({userId:following},{$push:{followers: userId}}) 
             return true;
        },


        async unFollowUser(_, {following:{userId,followers}}) {
            console.log(`Here the entered dta is ${userId} and ${following}`)
                const wasFollowed = await User.findOneAndUpdate({userId:userId},{$pull:{following: following}})
                console.log(`Here the update dta is ${wasFollowed.email}`)
                const follower = await User.findOneAndUpdate({userId:following},{$pull:{followers: userId}}) 
             return true;
        }
    }


}