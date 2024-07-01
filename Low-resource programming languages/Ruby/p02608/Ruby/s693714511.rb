N = gets.chomp.to_i

# N = 1000

p = 100
array = (1..p).to_a.repeated_permutation(3).to_a
keys = {}
100000.times do |i|
  keys[i+1] = 0
end

array.each do |a|
  x, y, z = a
  n = x*x + y*y + z*z + x*y + y*z + z*x
  keys[n] += 1
end

N.times do |n|
  puts(keys[n+1])
end