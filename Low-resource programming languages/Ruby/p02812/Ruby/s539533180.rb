n = gets.to_i
s = gets.to_s
count = 0

n.times do |i|
    count = count + 1 if s[i..i+2].to_s.gsub(/(\r\n?|\n)/,"") == "ABC"
    i = i + 1
end

puts count