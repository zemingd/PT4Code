n = gets.chop.to_i
s = []
n.times do
  s << gets.chop.to_i
end

sum_s = s.inject(:+)

if sum_s % 10 == 0
  s.sort!
  s.each do |value|
    if value % 10 != 0
      p sum_s-value
      exit
    end
  end
  p 0
else
  p sum_s
end

