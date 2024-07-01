n = gets.to_i
s = gets.chomp
cnt = 0

(n - 2).times do |i|
  cnt += 1 if s[i..(i + 2)] == "ABC"
end
puts cnt
