require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
a,b,c,d = gets.chomp.split.map(&:to_i)

while true
  c -= b
  if c <= 0
    puts 'Yes'
    exit
  end
  a -= d
  if a <= 0
    puts 'No'
    exit
  end

end