s = gets.chomp.split("")
arr = []
(s.length - 2).times do |i|
  arr << (s[i] + s[i+1] + s[i+2]).to_i
end

p arr.map{|n| n - 753}.map(&:abs).min
