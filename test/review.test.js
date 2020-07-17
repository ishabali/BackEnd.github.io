const user = require("../Classes/user");

describe("user", () => {
  describe("initialization", () => {
    it("should create an object with a review id if provided valid arguments", () => {
      
      const user = {user_name:"Sarah", review_id: 3};
      expect(user.user_name).toEqual("Sarah");
      expect(user.review_id).toEqual(3);
      if (!user.user_name.trim().length) {
      throw new Error("Expected parameter 'user_name' to be a non-empty string");
      }
      if (typeof user.review_id !== "number"||user.review_id < 0) {
      throw new Error("Expected parameter 'review_id' to be a non-negative number");
      }
    });

    it("should throw an error if provided no arguments", () => {
      const user = {user_name:"Sarah", review_id: 3};
      
     
      if (!user.user_name) {
        throw new Error("Expected parameter User to be a non-empty string");
        }
      
    });

  });
});
