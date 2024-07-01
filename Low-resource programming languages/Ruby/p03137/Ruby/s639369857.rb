N,M = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
x.sort!

if N >= M
  puts 0
  exit
end

y = []

(M-1).times{|i|
  y << (x[i+1]-x[i]).abs
}

y.sort!

puts y[0..M-1-N].inject(:+)