X, K, D = gets.split.map(&:to_i)

x = X.abs
k = K - x / D
if k < 0
  puts "a"
  exit
end

x = X % D
if k % 2 == 0
  puts x
else
  puts D - x
end
