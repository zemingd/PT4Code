ab = gets.split.inject(:+).to_i
ans = ab.times do |i|
  break "Yes" if i**2 == ab
end
puts ans == "Yes" ? ans : "No"