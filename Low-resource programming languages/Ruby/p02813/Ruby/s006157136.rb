# input
n = gets.chomp.to_i
P = gets.chomp.split.map(&:to_i)
Q = gets.chomp.split.map(&:to_i)

# main
R = P.permutation.to_a.sort
a = 0
b = 0

R.length.times do |i| 
  if R[i] == P then
    a = i + 1
  end
  if R[i] == Q then
    b = i + 1
  end
  if a != 0 and b != 0 then
    break
  end
end
    
# output
puts (b-a).abs
