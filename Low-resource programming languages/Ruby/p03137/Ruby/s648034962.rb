M,N = gets.chomp.split(' ').map(&:to_i)
if N == 1 
  puts 0
else
a =gets.chomp.split(' ').map(&:to_i)
a = a.sort
b = []
(N-1).times do |i|
  b.push((a[i]-a[i+1]).abs)
end
b=b.sort
(M-1).times{b.pop}
sum = 0
 b.each{|i| sum+=i}
 puts sum
end