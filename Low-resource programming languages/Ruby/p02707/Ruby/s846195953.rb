N = gets.chomp.to_i
result = Array.new(N,0)
A = gets.chomp.split.each do |a|
   result[a.to_i - 1] += 1
end
result.each do |r|
  p r
end