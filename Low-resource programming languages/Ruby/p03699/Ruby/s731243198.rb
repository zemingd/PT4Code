n = gets.chomp.to_i
s = []
n.times do
  s.push gets.chomp.to_i
end
ss = s.sort
sum = ss.reduce(:+)
ss.each do |e|
  if sum % 10 != 0
    puts sum
    exit
  end
  sum -= e
end
puts 0
