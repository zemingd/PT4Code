n = gets.to_i
s = gets.split
cnt = 0
(0..n - 1).each do |i|
    cnt += 1 if s[i] == 'Y'
end
puts cnt > 0 ? 'Four' : 'Three'