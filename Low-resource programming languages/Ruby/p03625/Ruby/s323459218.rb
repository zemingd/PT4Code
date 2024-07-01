n = gets.to_i
a = gets.split.map(&:to_i)

c = Hash.new(0)
a.each {|e| c[e] += 1}

arr = [0,0]
c.each do |key,value|
    next if value == 1
    value = 4 if value > 4
    arr += Array.new(value/2,key)
end

puts arr.sort[-2,2].inject(:*)