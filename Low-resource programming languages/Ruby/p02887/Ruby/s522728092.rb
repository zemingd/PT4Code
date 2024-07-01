n = gets.chomp.to_i
s = gets.chomp

buf = ""
count = 0
s.each_char do |c|
    count += 1 if c != buf
    buf = c
end
puts count