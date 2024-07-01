s = gets.chomp
t = gets.chomp
count = 0

(0..2).each do |i|
  if s[i] == t[i]
    count += 1
  end
end

puts count