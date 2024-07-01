require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
k = gets.chomp.to_i
a,b = gets.chomp.split.map(&:to_i)

a.upto(b) do |i|
  if i % k == 0
    puts 'OK'
    exit
  end
end

puts 'NG'

