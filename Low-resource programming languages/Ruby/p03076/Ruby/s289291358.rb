a = 5.times.map { gets.to_i }

last_i = 0
min_t = (a[0] % 10) == 0 ? 10 : a[0] % 10
a[1..-1].each_with_index do |x, i|
  t = (x % 10) == 0 ? 10 : x % 10
  if t < min_t
    min_t = t
    last_i = i + 1
  end
end

time = 0
a.each_with_index do |x, i|
  if i == last_i
    time += x
  else
    time += ((x / 10.0).ceil * 10).to_i
  end
end

puts time