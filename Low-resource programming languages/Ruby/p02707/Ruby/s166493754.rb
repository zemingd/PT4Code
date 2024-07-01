N = gets.chomp.to_i
num = gets.chomp.split.map(&:to_i)

(1..N-1).each do |i|
  puts num.count(i)
end

puts 0