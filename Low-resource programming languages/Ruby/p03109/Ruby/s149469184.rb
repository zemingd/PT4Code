require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
s = gets.chomp.split('/').map(&:to_i)

h = "Heisei"
t = "TBD"
if s[0] < 2019
  puts h
elsif s[0] > 2019
  puts t
else
  if s[1] <= 4
    puts h
  elsif s[1] > 4
    puts t
  end
end