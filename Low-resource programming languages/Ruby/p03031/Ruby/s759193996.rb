n,m = gets.chomp.split.map(&:to_i)
k = []
m.times do |i|
  k[i] = gets.chomp.split.map(&:to_i)
  k[i].shift
end
p = gets.chomp.split.map(&:to_i)
arr = []
ans = 0

(0..n).each do |j|
  [*0...n].combination(j) do |num|
  ans += 1 if (0...m).all?{ |i| (k[i] & num).size % 2 == p[i] }
  end
end
    
print ans