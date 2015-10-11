require 'date'

def age(birthday)
  birthday_date = Date.parse(birthday)
  age_in_days = (Date.today - birthday_date).to_i
  "Я живу #{age_in_days / 365} года или #{age_in_days} дней или " \
    "#{age_in_days * 24} часов или #{age_in_days * 24 * 60} минут " \
    "или #{age_in_days * 24 * 60 * 60} секунд"
rescue ArgumentError, TypeError
  'Invalid Date Format'
end

puts "age('03/05/1990') = #{age('03/05/1990')}"
puts "age(nil) = #{age(nil)}"
