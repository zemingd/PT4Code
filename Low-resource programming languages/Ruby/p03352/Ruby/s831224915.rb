X = gets.to_i

max = 0

1.upto(X) do |i|
  2.upto(X) do |j|
    y = i ** j
    break if  X < y
    max = y if max < y
  end
end

puts max