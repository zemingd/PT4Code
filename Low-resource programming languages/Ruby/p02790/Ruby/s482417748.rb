a, b = gets.strip.split.map(&:to_i)

x = []
y = []

b.times{|i| x << a}
a.times{|i| y << b}

if a < b 
  puts x.join
elsif a > b
  puts y.join
else
  puts x.join
end