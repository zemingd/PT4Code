n = gets.to_i

building = {}
building["1"] = {"1" => [0,0,0,0,0,0,0,0,0,0],
                 "2" => [0,0,0,0,0,0,0,0,0,0],
                 "3" => [0,0,0,0,0,0,0,0,0,0]}
building["2"] = {"1" => [0,0,0,0,0,0,0,0,0,0],
                 "2" => [0,0,0,0,0,0,0,0,0,0],
                 "3" => [0,0,0,0,0,0,0,0,0,0]}
building["3"] = {"1" => [0,0,0,0,0,0,0,0,0,0],
                 "2" => [0,0,0,0,0,0,0,0,0,0],
                 "3" => [0,0,0,0,0,0,0,0,0,0]}
building["4"] = {"1" => [0,0,0,0,0,0,0,0,0,0],
                 "2" => [0,0,0,0,0,0,0,0,0,0],
                 "3" => [0,0,0,0,0,0,0,0,0,0]}

i = 0
while true do
   if i == n
      break
   end
   b, f, r, v = gets.split.map(&:to_i)
   building["#{b}"]["#{f}"][r - 1] += v
   i += 1
end

building["1"].each do |key, val|
   val.each do |nop|
      print " #{nop}"
   end
   puts
end
puts "####################"
building["2"].each do |key, val|
   val.each do |nop|
      print " #{nop}"
   end
   puts
end
puts "####################"
building["3"].each do |key, val|
   val.each do |nop|
      print " #{nop}"
   end
   puts
end
puts "####################"
building["4"].each do |key, val|
   val.each do |nop|
      print " #{nop}"
   end
   puts
end