N = gets.to_i
W = gets.split.map(&:to_i)

abs = []
(0...N-1).each do |n|
  calc = (W.slice(0..n).inject(:+) - W.slice(n+1..-1).inject(:+)).abs
  (puts 0 ; exit ) if calc == 0
  abs << calc
end

puts abs.min