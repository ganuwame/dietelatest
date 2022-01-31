import express from "express"
import db from "./config/db.js"
import dietelaRoutes from "./routes/index.js"
import cors from "cors"
const app = express()

try {
    await db.authenticate()
    console.log('DB Connected!')
} catch (error) {
    console.log('DB Connect failed!')
}

app.use(cors())
app.use(express.json())
app.use('/api', dietelaRoutes)

app.listen(8888, ()=> console.log('Server listen to port 8888'))