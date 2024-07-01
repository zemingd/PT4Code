s = gets.split("").map(&:to_i)

cnt = 0

s.size.times do |i|
  cnt += 1 if s[i]==s[i+1]
end

if cnt != 0
  puts "Bad"
else
  puts "Good"
end


