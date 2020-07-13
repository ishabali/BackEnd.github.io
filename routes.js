const review = require('./controllers/controller');

exports.route = (app) => {
    app.post("/user", review.create);
    app.post("/review-new", review.createReview);
    app.get("/user/:id", review.getUserById);
    app.get("/review/:id", review.getReviewById);
    app.get("/review-all", review.getReviewAll);
    app.delete("/user/:id", review.deleteUser);
    app.delete("/review/:id", review.deleteReview);
    app.put("/user", review.updateUser);
    app.put("/review", review.updateReview);
} 