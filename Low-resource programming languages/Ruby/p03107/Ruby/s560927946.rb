cubes = gets.chomp.to_s
original_length = cubes.length
while true do
  before_length = cubes.length
  cubes.gsub!(/10/, "")
  cubes.gsub!(/01/, "")
  break if before_length == cubes.length
end
puts original_length - cubes.length