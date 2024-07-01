n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
ac = Array.new(10**5+1, 0)

a.each do |i|
  ac[i] += 1
end

puts a.uniq.map{|o| ac[o-1] + ac[o] + ac[o+1]}.max
