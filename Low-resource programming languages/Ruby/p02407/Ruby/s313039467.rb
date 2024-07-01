n = gets.to_i
num_arr = gets.split.map(&:to_i)
num = 1
num_arr.reverse.each do |arr|
  print arr.to_s
  break if num == n
  print " "
end

