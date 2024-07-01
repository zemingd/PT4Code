n=gets.to_i
hs = gets.split.map(&:to_i)
prev_max = 0

p hs.map{|h| h>=prev_max ? (prev_max = h;true) : false}.count(true)