a, b, c, d = gets.strip.split.map(&:to_i)
A = (a..b).to_a
B = (c..d).to_a
if (A+B).length - (A+B).uniq.length == 0
  puts 0
else
  puts (A+B).length - (A+B).uniq.length - 1
end