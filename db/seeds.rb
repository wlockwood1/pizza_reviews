# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Review.create(review_date: '2016-09-06', name: 'Broadway Pizza', address: '2709 Broadway, New York, NY', score: 6.4, url: 'http://www.barstoolsports.com/boston/one-bite-with-davey-pageviews-broadway-pizza/')
Review.create(review_date: '2016-09-07', name: '2 Bros Pizza', address: '755 6th Ave, New York, NY', score: 5.9, url: 'http://www.barstoolsports.com/boston/barstool-pizza-review-2-bros-pizza/')
Review.create(review_date: '2016-09-08', name: 'Empire Pizza', address: '314 5th Ave, New York, NY', score: 7.2, url: 'http://www.barstoolsports.com/boston/pizza-review-empire-pizza/')
Review.create(review_date: '2016-09-12', name: "Waldy's", address: '800 6th Ave, New York, NY', score: 7.8, url: 'http://www.barstoolsports.com/boston/pizza-review-waldys/')
Review.create(review_date: '2016-09-13', name: 'Bella Napoli', address: '257 7th Ave, New York, NY', score: 8.5, url: 'http://www.barstoolsports.com/boston/one-bite-with-davey-pageviews-bella-napoli-with-special-guest-sensational-the-rapper/')
Review.create(review_date: '2016-09-14', name: 'Little Italy Pizza', address: '2 E 33rd St, New York, NY', score: 6.4, url: 'http://www.barstoolsports.com/boston/barstool-pizza-review/')
Review.create(review_date: '2016-09-15', name: 'Pizza 23', address: '268 W 23rd St, New York, NY', score: 5.9, url: 'http://www.barstoolsports.com/boston/el-pres-pizza-review-pizza-23-bonus-pizza-review-at-great-burrito-wait-what/')
Review.create(review_date: '2016-09-15', name: 'Great Burrito', address: '100 W 23rd St, New York, NY', score: 0, url: 'http://www.barstoolsports.com/boston/el-pres-pizza-review-pizza-23-bonus-pizza-review-at-great-burrito-wait-what/')
Review.create(review_date: '2016-09-16', name: 'Cafe Rustico II', address: '25 W 35th St, New York, NY', score: 8.1, url: 'http://www.barstoolsports.com/boston/el-pres-pizza-review-pizza-23-bonus-pizza-review-at-great-burrito-wait-what/')
