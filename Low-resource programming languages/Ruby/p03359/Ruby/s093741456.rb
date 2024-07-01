require 'date'
a,b = gets.split.map(&:to_i)


i = Date.new(2018,1,1)
last = Date.new(2018,a,b).succ

x = 0

while i != last
    x += 1 if i.day == i.mon
    i = i.succ
end


p x