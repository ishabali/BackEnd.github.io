const User = require('../Classes/user');
//const { request, response } = require('express');

exports.create = async (request, response) => {
    const user = new User(request.body);
    await user.insertToUserDB();
    response.json(user.toLiteral());
}

exports.createReview = async (request, response) => {
    console.log("Controller CR was called", request.body);
    
    const checkReview = async () => {
        const user = new User({
            book_id:request.body.book_id.trim(),
            user_id:request.body.user_id.trim()
        });
        console.log("Controller2", user);
        const result = await user.checkReview();
        console.log("checkReview response", result)
        return result;
        }
    const item = await checkReview();
    console.log("item", item);

    if (item == false) {
        console.log("if")
        const user = new User({
            book_id:request.body.book_id.trim(),
            user_id:request.body.user_id.trim(),
            reviews:request.body.reviews,
            rating:request.body.rating.trim()
            });
            await user.insertToBookDB();
            response.json(user.toLiteral());
        } 
    else { 
        console.log("else")
        response.json(false)         
    }
}

exports.getUserById = async (request, response) => {
    const user = new User(request.params.id);
    await user.populateUserFromId();
    response.json(user.toLiteral());
}

exports.getReviewById = async (request, response) => {
    const user = new User(request.params.id);
    await user.populateBookFromId();
    response.json(user.toLiteral());
}

exports.getReviewAll = async (request,response) => {
    const user = new User();
    await user.populateAllReviews();
    response.json(user.toLiteral());
}

exports.deleteUser = async (request, response) => {
  const user = new User(request.params.id);
  await user.deleteFromUserDB();
  response.json(user.toLiteral());
}

exports.deleteReview = async (request, response) => {
    const user = new User(request.params.id);
    await user.deleteFromBookDB();
    response.json(user.toLiteral());
}

exports.updateUser = async (request, response) => {
    const user = new User(request.body);
    await user.updateUser();
    response.json(user.toLiteral());
}

exports.updateReview = async (request, response) => {
    console.log(request.body);
    const user = new User({
        review_id:request.body.review_id,
        reviews:request.body.reviews,
        rating:request.body.rating.trim()
    });
    console.log(user);
    await user.updateReview();
    response.json(user.toLiteral());
}
exports.login = async (request, response) => {
    console.log("controller",request.params);
    const user = new User({
        user_name:request.params.user_name,
        email:request.params.email
    });
    const result = await user.login();
    console.log("controller response", result);
    if (result.length) {
        const [replay] = result;
        response.json(replay);
    } else {
        response.json(false);
    }
}