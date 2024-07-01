K = gets.to_i
A,B = gets.split.map(&:to_i)

ok = false
(A..B).to_a.each do |i|
  ok = true if i % K == 0
end

if ok
  puts 'OK'
else
  puts 'NG'
end