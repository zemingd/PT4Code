n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

count = 0

(0..n-1).each do |i|
  mon = a[i] + a[i+1]
  if mon <= b[i]
    count += mon
  else
    if a[i] > b[i]
      count += b[i]
    else
      a[i+1] = mon - b[i]
	  count += b[i]
    end
  end
end

puts count