S = gets.chomp

cubes = S.dup

while cubes.size > 0
  idx = cubes.index(/01|10/)
  break if idx == nil
  cubes.slice!(idx, 2)
end

puts S.size - cubes.size