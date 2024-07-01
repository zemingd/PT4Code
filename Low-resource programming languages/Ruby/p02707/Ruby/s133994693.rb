N = gets.to_i
A = gets.split.map(&:to_i).group_by(&:itself)

N.times do |i|
  puts A[i+1]&.size || 0
end