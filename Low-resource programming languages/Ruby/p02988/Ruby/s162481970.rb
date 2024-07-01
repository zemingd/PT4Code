N=gets.chomp.to_i
P=gets.chomp.split.map(&:to_i)
c=0

(N-2).times do |i|
  if ((P[i] < P[i+1]) && (P[i+1]< P[i+2])) || ((P[i] > P[i+1]) && (P[i+1]> P[i+2])) then
    c+=1
  end
end

puts c
