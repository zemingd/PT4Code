require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
x = gets.chomp.to_i

-500.upto(500) do |a|
  -500.upto(500) do |b|
    if (a**5) - (b**5) == x
      puts [a,b].join(' ')
      exit
    end
  end
end




