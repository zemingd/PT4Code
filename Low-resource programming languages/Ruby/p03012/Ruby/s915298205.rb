n = gets.chomp.to_i
w = gets.split.map(&:to_i)

foward = 0
min = 99999999
while(foward < n - 1) do
  s1 = w[0..foward].inject(:+)
  s2 = w[(foward+1)..(n-1)].inject(:+)
  if (s1 - s2).abs < min
    min = (s1 - s2).abs
  end
  foward += 1
end
puts min