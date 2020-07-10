const review = require('./Controllers/controller');

exports.route = (app) => {
    app.post("/user", review.create);
    app.post("/review", review.createReview);
    app.get("/user/:id", review.getUserById);
    app.get("/review/:id", review.getReviewById);
    app.delete("/user/:id", review.deleteUser);
    // app.delete("review/:id", review.deleteReview);
    // app.update("user/:id", review.updateUser);
    // app.update("review/:id", review.updateReview);
} 