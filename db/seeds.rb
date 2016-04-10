# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.create(title: 'The Hunt for Red October', year: '1990')
Movie.create(title: 'The Matrix', year: '1999')
Movie.create(title: 'The Matrix Reloaded', year: '2003')
Movie.create(title: 'Tron Legacy', year: '2010')
Movie.create(title: 'Tron', year: '1982')
Movie.create(title: 'Star Trek', year: '2009')
Movie.create(title: 'Star Wars', year: '1977')
Movie.all.each {|mov| puts mov.title}
Actor.create(name: 'Sean Connery')
Actor.create(name: 'Keanu Reeves')
Actor.create(name: 'Chris Pine')
Actor.create(name: 'Harrison Ford')
Actor.all.each {|act| puts act.name}

Task.delete_all
Task.create!(description: 'This is a task description',
             deadline: '2014-07-01 01:00:00')
Task.create!(description: 'This is another task description',
             deadline: '2014-07-02 01:00:00')
Task.create!(description: 'Yet another task description',
             deadline: '2014-07-03 01:00:00')
