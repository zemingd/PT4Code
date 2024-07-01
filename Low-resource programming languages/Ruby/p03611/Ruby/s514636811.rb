n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
ac = Array.new(1000000, 0)
ans = 0

a.uniq.each do |i|
  ac[i] = a.count(i)
end

puts a.uniq.map{|o| ac[o-1] + ac[o] + ac[o+1]}.max
