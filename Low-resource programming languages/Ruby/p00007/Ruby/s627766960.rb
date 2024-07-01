x = 100000; t = 10**3
gets.to_i.times { x = (x*1.05/t).ceil*t }
puts x