n, k, q = gets.split.map(&:to_i)
a = []
q.times { a << gets.to_i }

answer = []

1.upto(n) do |i|
  minus_point = q - a.count(i)
  result = (k - minus_point > 0) ? 'Yes' : 'No'
  answer << result
end

puts answer
