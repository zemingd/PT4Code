N = gets.chomp.to_i
X = gets.chomp.split.map(&:to_i)

min = Float::INFINITY

(1..100).each do |i|
  s = X.sum {|x| (x - i)**2 }
  min = s if s < min
end

puts min
