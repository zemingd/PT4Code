n = gets.to_i
s = gets.chomp

cnt = 0
prev = nil
s.each_char do |c|
    cnt += 1 if prev != c    
    prev = c
end

puts cnt