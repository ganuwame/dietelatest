import { Sequelize } from "sequelize";
import db from "../config/db.js";

const { DataTypes } = Sequelize;

const Foods = db.define( 'tbl_food_calories',{
    food_name:{
        type: DataTypes.STRING
    },
    calories:{
        type: DataTypes.DOUBLE
    },
    unit:{
        type: DataTypes.STRING
    }
},{
    freezeTableName: true
})

export default Foods;