a, b = gets.chomp.split().map(&:to_i)

ans = 0
a.upto(b).each do |i|
  is = i.to_s.split(//)
  ans += 1 if is == is.reverse
end

puts ans