a,b = gets.split(' ').map(&:to_i)

result = -1
1.upto(100000000) do |i|
  next unless result == -1
  result = i if (i*0.08).floor == a && (i*0.1).floor == b
end

puts result