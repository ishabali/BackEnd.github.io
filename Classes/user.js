const reviews = require('../models/review');

class User {

    constructor(user_obj){
        this._user= user_obj;
    }

     get id(){
        return this._user.id;
    }
    get user_name(){
        return this._user.user_name
    }
    // set user_name(user_name){
    //     this._user.user_name = user_name
    // }
    // get email(){
    //     return this._user.email 
    // }
    // set email(email){
    //     this._user.email = email
    // }
    
    // get book_isbn(){
    //     return this._user.isbn;
    // }

    // set book_isbn(book_isbn){
    //     this._user.isbn = book_isbn;
    // }

    // get reviews(){
    //     return this._user.reviews;
    // }

    // set reviews(reviews){
    //     this._user.reviews = reviews;
    // }

    // get book_rating(){
    //     return this._user.rating;
    // }

    // set book_rating(book_rating){
    //     this._user.rating = book_rating;
    // }

    get review_id(){
        return this._user.review_id;
    }

    set review_id (review_id){
        this._user.review_id = review_id;
    }

    toLiteral(){
        return this._user;
    }

    // exists(){
    //     return (this._item) ? true : false;
    // }

    async insertToBookDB(){
        // const result = userModel.getUserByName(user_name);
        // if (result) user.is_new = false; return false;
        const result = await reviews.insertreview(this._user);
        this._user.review_id = result.insertId;
       
    }
    async insertToUserDB(){
        // const result = userModel.getUserByName(user_name);
        // if (result) user.is_new = false; return false;
        const result = await reviews.insert(this._user);
        this._user.id = result.insertId;
    }

    async populateBookFromId(){
        const result = await reviews.getReviewById(this._user);
        this._user = result;
    }

    async populateAllReviews(){
        const result = await reviews.getReviewAll();
        this._user = result;
    }

    async populateUserFromId(){
        const result = await reviews.getById(this._user);
        this._user = result;
    }

    async deleteFromUserDB(){
        await reviews.delete(this._user);
        // this._user.deleted = true;
    }
    async deleteFromBookDB(){
        await reviews.deletereview(this._user);
        // this._user.deleted = {deleted: true};
    }
    
    async updateUser(){
        const result = await reviews.update(this._user);
        this._user = result;
    }

    async updateReview(){
           const result = await reviews.updatereview(this._user);
           this._user = result;
           console.log(result);
    }

    async checkReview(){
        const result = await reviews.checkReview(this._user);
        this._user = result;
        console.log("Class checkReview", result);
        return result
    }
    async login(){
        const result = await reviews.login(this._user);
        this._user = result;
        console.log("Class login", result);
        return result
    }
}

module.exports = User;
