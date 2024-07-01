require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
h = Hash.new(0)
n.times do
  s = gets.chomp
  h[s] += 1

end

puts 'AC x ' + h['AC'].to_s
puts 'WA x ' + h['WA'].to_s
puts 'TLE x ' + h['TLE'].to_s
puts 'RE x ' + h['RE'].to_s


