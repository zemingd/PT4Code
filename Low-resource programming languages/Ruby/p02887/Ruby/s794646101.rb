n = gets.to_i
s = gets.chomp.split("")
count = 0
last = "aaaa"

n.times do |i|
  unless last == s[i]
    count += 1
  end
  last = s[i]
end

puts count