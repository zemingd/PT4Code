n = gets.to_i
ans = 'No'

x = n.to_s.split('').map{|i| i.to_i}.inject(&:+)
if (n % x).zero?
  ans = 'Yes'
end

puts ans