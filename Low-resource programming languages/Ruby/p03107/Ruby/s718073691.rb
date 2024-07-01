S = gets.chomp

cubes = S.dup
t = 0

while cubes.size > 0 && t < cubes.size
  if cubes[t...t + 2].match(/01|10/)
    cubes.slice!(t, 2)
    t = t - 2
  end
  t = t + 1
end

puts S.size - cubes.size
