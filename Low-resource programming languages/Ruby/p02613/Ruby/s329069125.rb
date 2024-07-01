require "pp"

n = gets.to_i
s = {}
n.times do |i|
  x = gets.chomp
  s[x] ||= 0
  s[x] += 1
end

order = %w(AC WA TLE RE)
order.each do |key|
  puts "#{key} x #{s[key] || 0}"
end