N = gets.chomp.to_i
Ps = gets.chomp.split(" ").map(&:to_i)
count = 0
 
Ps.each_with_index do |e,i|
  if i ==0 || i == N-1
    next
  elsif (Ps[i-1]<e&&e<Ps[i+1])||(Ps[i-1]>e&&e>Ps[i+1])
    count += 1
  end
end
 
puts count