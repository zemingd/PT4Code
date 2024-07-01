N = gets.chomp.to_i
num = gets.chomp.split.map(&:to_i)

puts num.count(1)

(2..N).each do |i|
  num.slice(0, i-2)
  puts num.count(i)
end