n = gets.to_i
a = gets.split.map(&:to_i)

s = 1
a.each { |i| s = s * i }

if s <= 10**18
  puts s
else
  puts -1
end