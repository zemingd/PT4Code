n,m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).sort
diff = []

if n>=m
  puts 0
  exit
end

(m-1).times do |i|
  diff.push((x[i+1]-x[i]).abs)
end

diff.sort!

puts diff[0..(m-2-(n-1))].inject(:+)