i = gets.chomp
s = i.split('').map(&:to_i)

sum = 0
s.each do |i|
  sum += i
end

n = i.to_i

if n % sum == 0
  print "Yes\n"
else
  print "No\n"
end
