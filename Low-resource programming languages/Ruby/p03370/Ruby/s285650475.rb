n,x = gets.chomp.split.map(&:to_i)
recipes = []
n.times do
    recipes.push(gets.to_i)
end

m = (x - recipes.inject(:+)) / recipes.min
puts n+m