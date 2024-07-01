n, here = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

numbers = (x + [here]).sort
distances = []

n.times do |i|
  next if i == 0
  distances += [numbers[i] - numbers[i - 1]]
end

if n == 1
  puts x[0] - here
else
  puts distances.inject{|a,b| a.gcd(b)}
end
