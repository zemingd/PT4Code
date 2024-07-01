N = gets.to_i
A = gets.split.map(&:to_i)

B = Array.new(N,0)
A.each do |i|
  B[i-1] += 1
end
B.each do |c|
  puts c
end