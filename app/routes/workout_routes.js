const express = require('express')
const passport = require('passport')
const Workout = require('../models/workout')
const customErrors = require('../../lib/custom_errors')

const handle404 = customErrors.handle404

const requireOwnership = customErrors.requireOwnership

const removeBlanks = require('../../lib/remove_blank_fields')

const requireToken = passport.authenticate('bearer', { session: false })

const router = express.Router()

// CREATE/POST
router.post('/workouts', requireToken, (req, res, next) => {
  req.body.workout.owner = req.user.id

  Workout.create(req.body.workout)

    .then(workout => {
      res.status(201).json({ workout: workout.toObject() })
    })

    .catch(next)
})

// INDEX/GET
router.get('/workouts', (req, res, next) => {
  Workout.find()
    .then(workouts => {
      return workouts.map(workout => workout.toObject())
    })
    // respond with status 200 and JSON of the examples
    .then(workouts => res.status(200).json({ workouts: workouts }))
    // if an error occurs, pass it to the handler
    .catch(next)
})

// SHOW/GET
router.get('/workouts/:name', (req, res, next) => {
  const nameField = req.params.name
  Workout.findOne({ name: nameField })
    // .then(workout => console.log(workout))
    .then(handle404)
    .then(workout => res.status(200).json({ workout: workout.toObject() }))

    .catch(next)
})

// UPDATE/PATCH
router.patch('/workouts/:id', requireToken, removeBlanks, (req, res, next) => {
  delete req.body.workout.owner

  Workout.findById(req.params.id)
    .then(handle404)
    .then(workout => {
      requireOwnership(req, workout)

      return workout.updateOne(req.body.workout)
    })
    .then(() => res.sendStatus(204))

    .catch(next)
})

// DESTROY/DELETE
router.delete('/workouts/:id', requireToken, (req, res, next) => {
  Workout.findById(req.params.id)
    .then(handle404)
    .then(workout => {
      requireOwnership(req, workout)
      workout.deleteOne()
    })
    .then(() => res.sendStatus(204))
    .catch(next)
})

module.exports = router
