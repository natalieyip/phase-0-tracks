require 'sqlite3'

database = SQLite3::Database.new("calories.db")

create_cal_table = <<-SQL
  CREATE TABLE IF NOT EXISTS calories(
    id INTEGER PRIMARY KEY,
    food VARCHAR(255),
    calories INT
  )
SQL

database.execute(create_cal_table) 

# puts calories[0]
def add_calories(db)
	total = 0 
	food_cal = db.execute("SELECT calories FROM calories")
	food_cal.each do |sub_array|
		sub_array.each do |num|
			total += num
		end 
	end 
	total
end 


puts "You ate this many calories today: #{add_calories(database)}"