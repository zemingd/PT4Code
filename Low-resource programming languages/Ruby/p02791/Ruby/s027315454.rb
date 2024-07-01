N = gets.to_i
P=gets.chomp.split(' ').map{|n| n.to_i}
count = 0
min = -1

0.upto(P.size - 1) do |i|
  if min == -1 || min >= P[i]
    min = P[i]
    count = count + 1
  end
end

puts count