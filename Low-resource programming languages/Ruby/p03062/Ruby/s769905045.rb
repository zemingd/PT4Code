_n = gets.strip.to_i
ps = []
ms = []
gets.split.each do |d|
  i = d.to_i
  if i > 0
    ps << i
  else
    ms << i
  end
end

sum = 0
rem = 0
if ms.size > 1
  if ms.size.odd?
    ms.sort!
    rem = ms.shift
  end
  sum += ms.inject(:+).abs
elsif ms.size == 1
  rem = ms.first
end

if rem < 0
  ps.sort!
  if ps.size > 0
    d = ps.shift
    if rem.abs > d
      sum += rem.abs - d
    else
      sum += d 
    end 
  else
    sum += rem
  end 
end
sum += ps.inject(:+) 
puts sum
