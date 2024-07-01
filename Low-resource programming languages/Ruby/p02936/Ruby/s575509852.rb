n,q = gets.split.map(&:to_i)
a = []
b = []
(n-1).times do |i|
  a[i],b[i] = gets.split.map(&:to_i)
end
result = Array.new(n,0)
q.times do
  p_i,x_i = gets.split.map(&:to_i)
  result[p_i-1] = x_i
end

(n-1).times do |i|
  a_i = a[i].to_i
  b_i = b[i].to_i
  result[b_i-1] += result[a_i-1]
end

puts "#{result.join(" ")}"
  