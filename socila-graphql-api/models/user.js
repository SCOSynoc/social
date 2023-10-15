const {model , Schema} = require('mongoose')

const userSchema = new Schema({
    userId: String,
    name:String,
    email: String,
    mobile: Number,
    profilePic:String,
    followers: [String],
    following:[String],
    createdAt: String,

})

module.exports = model('Users', userSchema)