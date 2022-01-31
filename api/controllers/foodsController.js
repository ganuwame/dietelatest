import Foods from "../models/foodsModel.js";

export const getAllFoods = async (req, res) => {
    try {
        const foods = await Foods.findAll()
        res.json(foods)
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const getFoodsById = async (req, res) => {
    try {
        const foods = await Foods.findAll({
            where: {
                id: req.params.id
            }
        });
        res.json(foods[0]);
    } catch (error) {
        res.json({ message: error.message });
    }  
}

export const createFoods = async (req, res) => {
    try {
        await Foods.create(req.body);
        res.json({ "message" : "product created" })
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const updateFoods = async (req, res) => {
    try {
        await Foods.update(req.body,{
            where: {
                id: req.params.id
            }
        });
        res.json({ "message" : "product updated" })
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const deleteFoods = async (req, res) => {
    try {
        await Foods.destroy({
            where: {
                id: req.params.id
            }
        });
        res.json({ "message" : "product deleted" })
    } catch (error) {
        res.json({ message: error.message })
    }
}