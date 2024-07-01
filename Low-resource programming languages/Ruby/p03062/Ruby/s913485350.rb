n = gets.to_i

arr = gets.split.map(&:to_i)
num = arr.count{|a| a < 0}

if num % 2 == 0
  puts arr.map(&:abs).sum
else
  abs = arr.map(&:abs)
  puts(abs.sum-abs.min*2)
end
