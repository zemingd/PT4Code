a, b, c = gets.chomp.split.map(&:to_i)
d, e, f = gets.chomp.split.map(&:to_i)
g, h, i = gets.chomp.split.map(&:to_i)

n = gets.chomp.to_i

bingo = []
n.times do
  bingo << gets.chomp.to_i
end

b1 = [a, b, c]
b2 = [d, e, f]
b3 = [g, h, i]
b4 = [a, d, g]
b5 = [b, e, h]
b6 = [c, f, i]
b7 = [a, e, i]
b8 = [g, e, c]



if (b1 & bingo).size == 3
  puts 'Yes'
elsif (b2 & bingo).size == 3
  puts 'Yes'
elsif (b3 & bingo).size == 3
  puts 'Yes'
elsif (b4 & bingo).size == 3
  puts 'Yes'
elsif (b5 & bingo).size == 3
  puts 'Yes'
elsif (b6 & bingo).size == 3
  puts 'Yes'
elsif (b7 & bingo).size == 3
  puts 'Yes'
elsif (b8 & bingo).size == 3
  puts 'Yes'
else
  puts 'No'
end