h, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
remain = 0
a.each do |damage|
  h -= damage
end

if h<=0
  puts "Yse"
else 
  puts "No"
end