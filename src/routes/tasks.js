import { Router } from 'express';
import { getTasks } from '../controllers/tasks'

const router = Router()

router.get('/tasks', getTasks)

router.get('/tasks/count')

router.get('/tasks:id')

router.post('/tasks')

router.delete('/tasks:id')

router.put('/tasks:id')

export default router