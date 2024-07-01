n, x =gets.strip.split.map{ |num| num.to_i}
grams = []
base_gram = 0
for i in 1..n
  gram = 0
  gram = gets.to_i
  base_gram += gram
  grams << gram
end

x = x - base_gram
min_gram = grams.sort[0]
puts n + x/min_gram