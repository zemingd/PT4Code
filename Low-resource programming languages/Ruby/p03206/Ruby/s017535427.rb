D = gets.chomp.to_i
ans = "Christmas"
(25 - D).times do
  ans += " Eve"
end
puts ans