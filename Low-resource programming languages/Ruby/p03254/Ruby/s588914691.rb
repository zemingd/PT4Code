a = $stdin.read.split("\n")
x = a[0].split(' ')[1].to_i
a = a[1].split(' ').map(&:to_i).sort!
result = 0
a.each do |aa|
  break if aa > x
  x -= aa
  result += 1
end
result -= 1 if result > 0 && x > 0

puts result