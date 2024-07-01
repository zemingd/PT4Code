x, k, d = gets.split.map(&:to_i)
if x.abs >= k * d
  if x > 0
    puts x - k * d
    exit
  else
    puts x + k * d
    exit
  end
end

x_r = x % d
x_l = x_r - d
if k % 2 == ((x - x_r).abs / d) % 2
  puts x_r
else
  puts x_r
end