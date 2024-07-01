n = gets.chomp.to_i
la = gets.split(" ").map(&:to_i)

def lcm(list)
  list.inject{|a,b| a.lcm(b)}
end

ri = lcm(la)-1
sum = 0
n.times do |i|
  sum += ri%la[i]
end
puts sum