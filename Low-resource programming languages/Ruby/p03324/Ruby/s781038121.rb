d,n = gets.split.map(&:to_i)
start = 100**d
if n != 100
  puts start * n
else
  puts start * 101
end
