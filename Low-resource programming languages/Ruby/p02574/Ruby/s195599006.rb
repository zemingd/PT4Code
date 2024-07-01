N = gets.to_i
A = gets.split.map(&:to_i)
Amax = A.max
D = Array.new(Amax + 1,&:itself)
(2 .. Integer.sqrt(Amax)).each do |i|
  next if D[i] < i
  s = i
  while s < D.size
    D[s] = i if D[s] == s
    s += i
  end
end
pairs = Array.new(Amax + 1, 0)
A.each do |a|
  while a > 1
    m = D[a]
    pairs[m] += 1
    while a % m == 0
      a /= m
    end
  end
end
if pairs.max <= 1 
  puts 'pairwise coprime'
elsif A.inject(&:gcd) == 1
  puts 'setwise coprime'
else
  puts 'not coprime'
end
