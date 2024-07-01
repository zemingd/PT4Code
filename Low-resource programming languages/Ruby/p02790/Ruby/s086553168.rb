a,b = gets.split(" ").map(&:to_i)
if a >= b
  a.times do |n|
    print b
  end
else
  b.times do |n|
    print a
  end
end