n = gets.chomp.to_i
a= gets.chomp.split(" ").map{|i|i = i.to_i}

ans = 0
a.each do|elm|
  ans += (elm-1)
end

puts ans

