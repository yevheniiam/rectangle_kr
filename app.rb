require_relative 'rectangle'

# Запит довжини і ширини у користувача
puts "Введіть довжину прямокутника:"
length = gets.chomp.to_f

puts "Введіть ширину прямокутника:"
width = gets.chomp.to_f

# Створення об'єкта класу Rectangle
rectangle = Rectangle.new(length, width)

# Виведення площі
puts "Площа прямокутника: #{rectangle.area}"
