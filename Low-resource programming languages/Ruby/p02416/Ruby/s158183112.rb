loop do
  a=gets.split("").map(&:to_i)
  break if a[0]==0
  puts a.sum
end

