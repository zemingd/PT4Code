n = gets.to_i
a = gets.split.map(&:to_i)
sort = a.sort
if n % 2 ==0
  b = ((sort[n/2] + sort [n/2 - 1]) / 2) - n / 2
else
  b = sort[n/2]-n/2
end

result = 0
n.times do |i|
  result += (a[i] - (b+i)).abs
end



puts result
