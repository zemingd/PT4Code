input = gets.chomp
s = input.split('').map(&:to_i).sum
n = input.to_i

if n % s == 0
  print "Yes\n"
else
  print "No\n"
end
