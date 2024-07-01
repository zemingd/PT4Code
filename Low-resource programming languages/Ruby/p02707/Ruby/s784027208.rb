N = gets.chomp.to_i
num = gets.chomp.split.map(&:to_i)

(1..N).each do |i|
  num.slice!(0, i-1)
  puts num.count(i)
end