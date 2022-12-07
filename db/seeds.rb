# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


    user1= User.create!(name: 'user1' , email: 'user1@gmail' , password: '123456')
    user2= User.create!(name: 'user2' ,email: 'user2@gmail' , password: '123456')
    user3= User.create!(name: 'user3' , email: 'user3@gmail' , password: '123456')
    
    car1 = Car.create!(name: 'car1')
    car2 = Car.create!(name: 'car2')
    car3 = Car.create!(name: 'car4')
    
    reservation1 = Reservation.create!(user_id: user1.id , car_id: car1.id , city: 'city1' , date: '2022-01-28' )
    reservation2 = Reservation.create!(user_id: user2.id , car_id: car2.id , city: 'city2' , date: '2022-02-28' )
    reservation3 = Reservation.create!(user_id: user3.id , car_id: car3.id , city: 'city3' , date: '2022-03-28' )
    
