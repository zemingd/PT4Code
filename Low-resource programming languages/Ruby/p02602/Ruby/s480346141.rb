n,k = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)

v = 1
k.times do |i|
  v *= a[i]
end
vo = v
j = 0
k.upto(n-1) do |i|
  v /= a[j]
  v *= a[i]
  if v > vo
    puts "Yes"
  else
    puts "No"
  end
  vo = v
  j += 1
end
