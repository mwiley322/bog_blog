# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

Creature.destroy_all
Creature.create({name: "Luke", description: "Jedi"})
Creature.create({name: "Darth Vader", description: "Father of Luke"})
Creature.create({name: "Bumbleman", description: "Bumblebee with human body"})
Creature.create({name: "Thwarton", description: "Dog engineer with green fur"})
