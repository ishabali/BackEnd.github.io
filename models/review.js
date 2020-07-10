const mysql = require('../connection');

exports.insertreview = async (user_obj) => {
    const connection = await mysql.connect();
    const [data] = await connection.query(`INSERT INTO reviews SET ?`, user_obj);
    return data;
}
exports.getReviewById = async (id) => {
    const connection = await mysql.connect();
    const [data] = await connection.query(`SELECT * FROM reviews WHERE review_id = ?`, id);
    return data[0];
}
exports.updatereview = async (user_obj) => {
    const connection = await mysql.connect();
    const [data] = await connection.query(`UPDATE reviews SET ? WHERE id = ?`, [user_obj, user_obj.id]);
    return data;
}
exports.deletereview = async (id) => {
    const connection = await mysql.connect();
    const [data] = await connection.query(`DELETE FROM reviews WHERE id = ?`, id);
    return data;
}
exports.insert = async (user_obj) => {
    const connection = await mysql.connect();
    const [data] = await connection.query(`INSERT INTO user SET ?`, user_obj);
    return data;
}
exports.getById = async (id) => {
    const connection = await mysql.connect();
    const [data] = await connection.query(`SELECT * FROM user WHERE user_id = ?`, id);
    return data[0];
}
exports.update = async (auction_obj) => {
    const connection = await mysql.connect();
    const [data] = await connection.query(`UPDATE user SET ? WHERE user_id = ?`, [auction_obj, auction_obj.id]);
    return data;
}
exports.delete = async (id) => {
    const connection = await mysql.connect();
    console.log(id);
    const [data] = await connection.query(`DELETE FROM user WHERE user_id = ?`, id);
    return data;
}