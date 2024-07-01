# Something on It
def something_on_it(str)
  sum = 700
  str.chars.each do |topping|
    sum += 100 if topping == "o"
  end
  sum
end

str = gets.chomp
puts(something_on_it(str))
