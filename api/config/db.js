import { Sequelize } from "sequelize";

const db = new Sequelize('dbdietela', 'root', '',{
    host : 'localhost',
    dialect: "mysql"
})

export default db