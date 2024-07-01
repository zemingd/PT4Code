N = gets.to_i
A = gets.split().map(&:to_i)
ans = []

(1..N).each do |i|
  ans.push(A.index(i) + 1)
end

puts ans.join(" ")