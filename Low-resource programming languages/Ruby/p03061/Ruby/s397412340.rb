n = gets.to_i
a = gets.chomp.split.map(&:to_i)

first_array = []
last_array = []
n.times do |i|
  j = n - i - 1
  if i == 0
    first_array[0] = a[i]
    last_array[0] = a[j]
    next
  end

  first_new = first_array[i-1].gcd(a[i])
  last_new = last_array[i-1].gcd(a[j])
  first_array.push(first_new)
  last_array.push(last_new)
end

array = []
n.times do |i|
  if i == 0
    new = last_array[n-i-2]
    array.push(new)
    next
  end

  if i == n-1
    new = first_array[i-1]
    array.push(new)
    next
  end
  new = first_array[i-1].gcd(last_array[n-i-2])
  array.push(new)
end

p array.max