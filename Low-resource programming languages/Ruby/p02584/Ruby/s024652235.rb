x, k, d = readline.chomp.split(" ").map(&:to_i)

if k % 2  == 0
  2.times do |i|
    plus = (x + d).abs 
    minus = (x -d).abs
    if plus > minus
      x = minus
    else
      x = plus
    end
  end
elsif k % 2 == 1
  plus = (x + d).abs 
  minus = (x -d).abs
  if plus > minus
    x = minus
  else
    x = plus
  end
end

puts x