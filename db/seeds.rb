# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Platform.find_or_create_by(name: 'PS3')
Platform.find_or_create_by(name: 'PS4')
Platform.find_or_create_by(name: 'Nintendo Switch')

Title.find_or_create_by(name: 'Ridge Racer')
Title.find_or_create_by(name: 'pokemon')
Title.find_or_create_by(name: '太鼓の達人')
Title.find_or_create_by(name: '大乱闘スマッシュブラザーズ')
Title.find_or_create_by(name: 'どうぶつの森')