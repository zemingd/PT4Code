N = gets.to_i
A = gets.split.map { |e| e.to_i }

ans = Array.new(N)

A.each_with_index do |a, i|
  ans[a - 1] = i + 1
end

puts ans.join(' ')
