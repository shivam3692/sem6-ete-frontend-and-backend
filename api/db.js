import mysql from "mysql"

export const db = mysql.createConnection({
  host:"localhost",
  user:"shivam",
  password: "blog123",
  database:"blog"
})