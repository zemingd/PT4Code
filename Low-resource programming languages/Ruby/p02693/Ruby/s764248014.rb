K = gets.to_i
A, B = gets.split.map(&:to_i)

flg = false
(A..B).each do |n|
  flg = true if n % K == 0
end

if flg
  puts "OK"
else
  puts "NG"
end
