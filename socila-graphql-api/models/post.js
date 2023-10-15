const {model , Schema} = require('mongoose')

const postSchema = new Schema({
    userId: String,
    captions:String,
    username: String,
    likes: [String],
    createdAt: String,
    imageUrl:String,
    postedBy:String,
    tags:[String]
})

module.exports = model('Posts', postSchema)