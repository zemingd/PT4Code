require 'date'
a,b = gets.split(" ").map(&:to_i)

d = Date.new(2018, a ,b)
e = Date.new(2018, 5 ,6)

count = 0
(1..12).each do |n|
    date = Date.new(2018,n,n)
    if d >= date
        count = count + 1
    end
end
puts count