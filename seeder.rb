require 'pg'
require 'faker'
require 'pry'

TITLES = ["Roasted Brussels Sprouts",
  "Fresh Brussels Sprouts Soup",
  "Brussels Sprouts with Toasted Breadcrumbs, Parmesan, and Lemon",
  "Cheesy Maple Roasted Brussels Sprouts and Broccoli with Dried Cherries",
  "Hot Cheesy Roasted Brussels Sprout Dip",
  "Pomegranate Roasted Brussels Sprouts with Red Grapes and Farro",
  "Roasted Brussels Sprout and Red Potato Salad",
  "Smoky Buttered Brussels Sprouts",
  "Sweet and Spicy Roasted Brussels Sprouts",
  "Smoky Buttered Brussels Sprouts",
  "Brussels Sprouts and Egg Salad with Hazelnuts"]

#WRITE CODE TO SEED YOUR DATABASE AND TABLES HERE
def db_connection
  begin
    connection = PG.connect(dbname: "brussels_sprouts_recipes")
    yield(connection)
  ensure
    connection.close
  end
end

db_connection do |conn|
  # titles = TITLES.uniq
  # titles.each do |title|
  #   sql = "INSERT INTO recipes (name) VALUES ('#{title}')"
  #   conn.exec(sql)
  # end
  # 10.times do
  #   name = Faker::Name.unique.name
  #   title = Faker::Lorem.unique.sentence(word_count = 4, supplemental = false, random_words_to_add = 6)
  #   description = Faker::Lorem.unique.paragraph
  #   recipe_title = titles[1 + rand(titles.length)]
  #   sql_query = "INSERT INTO comments (name, title, description, recipe) VALUES ($1, $2, $3, $4)"
  #   data = [name, title, description, recipe_title]
  #   conn.exec_params(sql_query, data)
  # end
end
