n, k = gets.split.map(&:to_i)
hps = gets.split.map(&:to_i)
if k >= hps.size
  puts 0
  exit
end
hps.sort!
hps = hps[0..-1-k]
puts hps.inject(0, :+)