n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

f = true
res = a[0...k].inject(&:*)
prev = res
k.upto(n-1) do |i|
  res = res / a[i-k] * a[i]
  if res > prev
    puts "Yes"
  else
    puts "No"
  end
  prev = res
end
