n, k = gets.split.map(&:to_i)
hps = gets.split.map(&:to_i)
if k >= hps.size
  puts 0
  exit
end
hps.sort!
hps = hps[-k..-1]
puts hps.inject(:+)