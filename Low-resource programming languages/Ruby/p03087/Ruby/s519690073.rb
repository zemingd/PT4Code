n,q = gets.chomp.split(' ').map(&:to_i)
str = gets.chomp
lrs = []
q.times do
  lrs << gets.chomp.split(' ').map(&:to_i)
end
array = []
str.size.times do |i|
  if (i == 0)
    array << 0
    next
  end
  if (str[i-1] == 'A' && str[i] == 'C')
    array << array[i-1]+1
  else
    array << array[i-1]
  end
end

lrs.each do |lr|
  l = lr[0]-1
  r = lr[1]-1
  puts array[r] - array[l]
end