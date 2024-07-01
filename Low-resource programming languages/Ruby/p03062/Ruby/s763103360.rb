n = gets.to_i

values = gets.split.map(&:to_i)

count = 0
loopcount = 0
values.each do |num|
  if num < 0
    count += 1
    values[loopcount] *= -1
  end
  loopcount += 1
end

values.sort!.reverse!

if count.even?
  p values.inject(:+)
else
  p values[0..(n-2)].inject(:+) - values[-1]
end