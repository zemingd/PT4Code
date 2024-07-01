n = gets.chomp.to_i
dlist  = gets.chomp.split.collect{ |item| item.to_i}

result = 0
n.times do |i|
  (n-i-1).times do |j|
    result += dlist[i] * dlist[j+i+1]
  end
end

puts result
