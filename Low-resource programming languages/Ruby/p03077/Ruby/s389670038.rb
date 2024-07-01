n = gets.to_i
cap = [].tap{|caps| 5.times{ caps << gets.to_f } }.min
puts (n/cap).ceil+4