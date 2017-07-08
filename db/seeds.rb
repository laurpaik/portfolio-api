# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: 'blah', body: 'blahblah', date_posted: '2017-06-12')
User.create(email: 'la@la.com', password: 'asdf', password_confirmation: 'asdf')
Technology.create(name: 'Ember.js', link: 'emberjs.com')
