require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
w,h,n = gets.chomp.split.map(&:to_i)

left = bottom = 0
right = w
up = h
n.times do
  x,y,a = gets.chomp.split.map(&:to_i)
  if a == 1
    left = x
  elsif a == 2
    right = x
  elsif a == 3
    bottom = y
  elsif a == 4
    up = y
  end
end

puts [(up-bottom), 0].max * [(right - left), 0].max
