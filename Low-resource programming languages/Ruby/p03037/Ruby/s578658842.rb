n,m = gets.split.map(&:to_i)
arrayL = Array.new
arrayR = Array.new
m.times do
  l,r = gets.split.map(&:to_i)
  arrayL << l
  arrayR << r
end


if arrayL.max > arrayR.min
  puts 0
elsif arrayL.max == arrayR.min
  puts 1
else
  puts arrayR.min - arrayL.max + 1
end