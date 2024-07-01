n = gets.to_i
a = gets.split.map(&:to_i)
sort_a = a.sort
m = (n/2) - 1
a.each do |i|
  if i <= sort_a[m]
    puts sort_a[m+1]
  else
    puts sort_a[m]
  end
end