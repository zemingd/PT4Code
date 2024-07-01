n = gets.chomp.to_i
hs = gets.chomp.split(" ").map(&:to_i);

max = 0
count = 0
hs.each do |heigth|
  next if heigth < max 
  count += 1
  max = heigth
end
puts count