hps = gets.split.map(&:to_i)
if k >= hps.size
  puts 0
  exit
end
hps.sort!
k.times { hps.pop }
puts hps.inject(:+)