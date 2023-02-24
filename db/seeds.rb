# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# user = User.create(name: "josh thompson", role: :regular)
# movie_1 = Movie.create(name: "title", year: 1988)
# user.add_favorite_movie(movie_1)

# user.favorite_movies


# connoisseur =  Connoisseur.new(name: "Charles Bronson", status: :tipsy)

# brand = Brand.create(name: "Pilsner", hq: "Denver, CO")

# beer_params = {
#     name: "Bad IPA",
#     type: :ipa
#     manufacturer: brand
# }

# beer_1 = Beer.new(beer_params)


# connoisseur.drink(beer_1)

# connoisseur.drink_count

# connoisseur.drunk?


# smoker = Smoker.new(name: 'Gail', cranky_level: :normal)

# habit_params = {
#     smoker: smoker,
#     date_started: "01-01-1991",
#     daily_usage: true,
#     daily_consumed: 5
# }
# Habit.create(habit_params)

# smoker_2 = Smoker.new(name: 'Anrew', cranky_level: :low)

# habit_params = {
#     smoker: smoker_2,
    # habit_type: Cigarette.new(cig_params),
#     date_started: "01-01-2020",
#     daily_usage: true,
#     daily_consumed: 1
# }
# Habit.create(habit_params)



# cig_1 = Cig.create(name: 'Newport', menthol: true)

# smoker.smoke(cig_1)

# smoker.cig_count

# smoker.angry?
# smoker.lifetime_cig_count
# smoker.dollars_smoked
# smoker.has_smoking_fixed_childhood_trauma?
# # -> false

# smoker.broke?



collector = Collector.new(name: 'Arnaldo', era_preference: :retro)

video_game_1 = VideoGame.new(name: 'Cuphead', 
                             retro: false,
                             rarity: 3.7,
                             cost: 20.00)


collector.buy(video_game_1)

collector.games_collected

collector.rarity_above(3.7)

nintendo = GameCorp.create(name: "Nintendo", location: "Japan")
ea_sports = GameCorp.create(name: "EA Sports", location: "Japan")

game_1 # associate w/Nintendo
game_1 # associate w/Nintendo

game_1 # associate w/ea_sports
game_1 # associate w/ea_sports

# 3 customers, mix in the games, be able to know what gamecorps have what customers, vice versa#


