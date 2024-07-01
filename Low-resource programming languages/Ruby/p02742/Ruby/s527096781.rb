H,W = gets.split.map(&:to_i)
if H <= 1 || W <= 1
  puts 1
else
  p ((H*W)/2.0).ceil
end