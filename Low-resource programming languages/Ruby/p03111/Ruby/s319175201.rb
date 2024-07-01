N, A, B, C = gets.split.map(&:to_i)
L = N.times.map{gets.to_i}

def comb(ar, n)
  ans = []
  for i in 1..n 
    ar.combination(i).each do |br|
      ans << [br.inject(:+), (br.size - 1) * 10, br]  
    end 
  end 
  ans
end

def calc(abc, ar, n)
  comb(ar, n).map{|len, mp, br| [(abc - len).abs + mp, br]}.min_by{|x| x[0]}
end 

ans = Float::INFINITY
t = L.size - 3 + 1
[A, B, C].permutation(3).each do |ar|
  aL = L.dup
  tot = 0
  ar.each.with_index(1) do |abc, i|
    mp, use = calc(abc, aL, t)
    tot += mp
    use.each do |x|
      aL.delete_at(aL.index(x))
    end 
    t = aL.size - (3 - i) + 1
  end
  ans = tot if tot < ans
end
puts ans