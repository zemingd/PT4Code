n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = []
n.times do |i|
  if i % 2 == 0
    ans << a[i]
  else
    ans.unshift(a[i])
  end
end
ans = ans.reverse if n % 2 == 1
ans.each do |x|
  print "#{x} "
end
puts ""