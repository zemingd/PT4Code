N = gets.chomp.to_i
s = []
N.times do
  s.push(gets.chomp.to_i)
end
sum = s.inject(:+)
if sum % 10 != 0
  p sum
  exit
end

s.sort!
m = 0
s.each do |ss|
  if ss % 10 != 0
    m = ss
    break
  end
end
if m == 0
  p 0
else
  p sum - m
end
