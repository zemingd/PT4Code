require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
w,h,x,y = gets.chomp.split.map(&:to_i)

puts w*h/2

if (x*2 == w && y*2 == h) || h==0 || w == 0
  puts 1
else
  puts 0
end