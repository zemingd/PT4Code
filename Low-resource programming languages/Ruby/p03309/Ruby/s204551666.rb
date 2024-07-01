N = gets.to_i
A = gets.split.map(&:to_i)

min = 99999999

ave = A.inject(:+) / N
(-ave*N).upto(ave*N).each do |i|
  value = 0
  j = 1
  A.each do |a|
    value += (a - (i + j)).abs
    j += 1
  end
  if value < min
    min = value
  end
end

puts min
