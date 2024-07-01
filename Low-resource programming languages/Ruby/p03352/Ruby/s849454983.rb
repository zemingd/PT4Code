require 'prime'
x = gets.to_i

ans = 0
x.times do |i|
    next if !i.prime?
    break if i ** 2 > x
    y = i ** Math.log(x,i).floor
    ans = y if ans < y
end

puts ans == 0 ? 1 : ans