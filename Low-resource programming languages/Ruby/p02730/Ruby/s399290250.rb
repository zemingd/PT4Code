s = gets.chomp.to_s
n = s.length
srev = s.reverse
b = s.slice(0..((n-1)/2-1))
c = s.slice(((n+3)/2)-1..n-1)
brev = b.reverse
crev = c.reverse
if s == srev and b == brev and c == crev
  puts "Yes"
else
  puts "No"
end
