while line = gets
  break if line.chomp == "0"
  nums = line.chomp.split('').map(&:to_i)
  puts nums.inject(:+)
end