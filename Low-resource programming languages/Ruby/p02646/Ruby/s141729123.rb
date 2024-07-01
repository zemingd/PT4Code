def lscan; gets.split.map(&:to_i); end

a,v = lscan
b,w = lscan
t = gets.to_i

if v <= w
  puts 'NO'
else
  d = (b-a).abs
  u = v - w
  if (d/u) <= t
    puts 'YES'
  else
    puts 'NO'
  end
end