x,k,d = readline.chomp.split(" ").map(&:to_i)

k.times do |i|
  plus = (x + d).abs
  minus = (x - d).abs

  if plus >= minus
    x = minus
  elsif minus > plus 
    x = plus
  end
end

puts x