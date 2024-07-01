END { load __FILE__ unless $stdin.eof? }

x, k, d = gets.split.map!(&:to_i)
x = x.abs

s, t = x.divmod(d)

if s > k
  puts x - k * d
else
  if (s - k).even?
    puts t
  else
    puts (t - d).abs
  end
end
