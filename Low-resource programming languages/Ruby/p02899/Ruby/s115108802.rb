n = gets.to_i
a = gets.split.map(&:to_i)

answer = Array.new(n)

a.each.with_index(1) do |n,i|
  answer[n-1] = i
end

puts answer.join ' '