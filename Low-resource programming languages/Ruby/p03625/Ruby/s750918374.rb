N = gets.to_i
A = gets.split.map(&:to_i)

F = A.inject(Hash.new(0)) {|h, x| h[x] += 1; h}

E = F.sort.select{|x| x[1] >= 2}.map{|x| x[0]}

if E.size >= 2
  puts E[-1] * E[-2]
else
  puts 0
end
