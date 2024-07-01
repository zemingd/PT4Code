n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
sum = 0
1.upto(n) do |x|
  if a[x-1] >= b[x-1] then
    sum += b[x-1]
  else
    sum += a[x-1]
    rest = b[x-1] - a[x-1]
    if a[x] >= rest then
      sum += rest 
      a[x] -= rest
    else
      sum += a[x]
      a[x] = 0
    end
  end
end
puts sum