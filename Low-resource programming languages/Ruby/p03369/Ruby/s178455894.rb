as = gets.split("")

ans = 700

as.each do |a|
  ans += 100 if a == 'o' 
end

puts ans