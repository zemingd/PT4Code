n,x = gets.split.map(&:to_i)
kids = gets.split.map(&:to_i).sort
sum = kids.inject(:+)
counter = 0

if x == kids.inject(:+)
  puts kids.size
elsif x > kids.inject(:+)
  puts kids.size - 1
else
  kids.each do |k|
    next if x < k
    x -= k if
    counter += 1
  end
  puts counter
end
