n,k = gets.strip.split.map(&:to_i)
array = []
while number = gets
  array << number.chomp.to_i
end
ary = array.sort
h = ary.max
i = 0
while i<=n-k do
  if h > ary[i+k-1]-ary[i]
    h = ary[i+k-1]-ary[i]
  end
  i += 1
end
puts h