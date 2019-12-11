# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
amanda = User.create(email: "amanda@a.com", password: "password", name: "amanda", age: 28, sign: "leo", bio: "I’m the kinda girl you can take home to your family. I will then get closer to them than you are and we’ll slowly phase you out.", gender: "female", preference: "male", location: "Glen Cove", instagram: "@amandena")
piero = User.create(email: "piero@p.com", password: "password", name: "piero", age: 27, sign: "libra", bio: "I’m a fun loving guy and a self-starter who has absolutely no interest in committing murder. I’m looking for love, companionship, or just that one lovely evening (and rest assured that that one lovely evening will absolutely end with you back at your house, safe, and sound!) Let me take you into my magical world of not murdering anyone, ever, for any reason. I’ll tell you this right up front: Certainly not murdering ANYONE, least of all you! Beyond that, mostly digging.", gender: "male", preference: "female", location: "Glen Cove", instagram: "@pierood")
moon = User.create(email: "moon@m.com", password: "password", name: "moon", age: 32, sign: "pisces", bio: "Cute enough to take your breath away, smart enough to bring it back.", gender: "female", preference: "male", location: "Hicksville", instagram: "@themaneonthemoon")
jerry = User.create(email: "jerry@j.com", password: "password", name: "jerry", age: 38, sign: "capricorn", bio: "I accidentally (purposely) changed my name to Jeb Bush on Facebook in a 2AM burst of inspiration, not realizing you can’t change it for 60 days, so if that doesn’t tell you enough about me as a person then I don’t know what to tell you. I lost my watch at a party once. An hour later I saw some guy stepping on it while he was harassing some woman at that party. Infuriated, I immediately went over, punched him and broke his nose. No one does that to a woman, not on my watch.", gender: "male", preference: "female", location: "Hicksville", instagram: "@jerry")
georgie = User.create(email: "georgie@g.com", password: "password", name: "georgie", age: 24, sign: "aries", bio: "I'm the goodest girl.", gender: "female", preference: "both", location: "Glen Cove", instagram: "@georgie")
tim = User.create(email: "tim@t.com", password: "password", name: "tim", age: 36, sign: "taurus", bio: "I'm boring.", gender: "male", preference: "female", location: "Glen Cove", instagram: "@tim")

Message.create(user_id: 1, comment: "Are you Jamaican?....cuz Jamaican me crazy mon.")
