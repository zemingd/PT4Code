x,k,d = gets.split.map(&:to_i)
tmp = (x.abs - (k * d))
tmp2 = x.abs % d
step = x.abs / d
if tmp < 0
  if (k - step).odd?
    puts (tmp2 - d).abs > tmp.abs ? tmp.abs : (tmp2 - d).abs
  else
    puts tmp2 > tmp.abs ? tmp.abs : tmp2
  end
else
  puts tmp
end