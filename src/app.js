import express from 'express';
import taskRoutes from './routes/tasks'

const app = express();

app.use(taskRoutes)

export default app