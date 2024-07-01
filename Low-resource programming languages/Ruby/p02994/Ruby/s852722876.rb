n, l = gets.chomp.split().map(&:to_i)
apples = [*1..n]

tastes = apples.map{|i| l + i - 1}
abs_tastes = tastes.map(&:abs)
min_taste_index = abs_tastes.index(abs_tastes.min)
print(tastes.sum - tastes[min_taste_index])
