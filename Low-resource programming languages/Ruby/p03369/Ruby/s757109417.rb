s = gets.chomp.split("")
ramen = 700
s.each do |i|
  if i == "o"
    ramen += 100
  end
end
puts ramen
