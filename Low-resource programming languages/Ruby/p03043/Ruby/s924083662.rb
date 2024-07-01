n,k = gets.split.map(&:to_i)

ue = []
n.times do |i|
  a = i + 1
  sum = 0
  until a >= k
    a = a * 2
    sum += 1
  end
  ue << sum
end

sum = 0
c = 1/n.to_f
ue.each do |a|
  b = 0.5 ** a
  sum += b * c
end


p sum