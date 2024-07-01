x, k, d = gets.split.map(&:to_i)

x = x.abs

if x >= k * d
  puts x - k * d
else
  q = x / d
  r = x % d

  if r < (r - d).abs
    puts (k - q).even? ? r : (r - d).abs
  else
    puts (k - (q + 1)).even? ? (r - d).abs : r
  end
end