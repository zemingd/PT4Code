n = gets.chomp.to_i
s = []
n.times do
  s.push gets.chomp.to_i
end
ss = s.sort
sum = ss.reduce(:+)
if sum % 10 != 0
  puts sum
  exit
end
ns = ss.select { |e| e % 10 != 0 }
if ns.empty?
  puts 0
else
  puts sum - ns[0]
end
