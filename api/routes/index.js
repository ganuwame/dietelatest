import express from "express";
import { 
    getAllFoods,
    createFoods,
    updateFoods,
    deleteFoods,
    getFoodsById
 } from "../controllers/foodsController.js";

const router = express.Router()

router.get('/', getAllFoods);
router.get('/:id', getFoodsById);
router.post('/', createFoods);
router.patch('/:id', updateFoods);
router.delete('/:id', deleteFoods);

export default router;