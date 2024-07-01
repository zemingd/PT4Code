class Integer
  def bit?(i)
    self & (1 << i) > 0
  end
end

N, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

C = Array.new(41){ [0, 0] }
(0 .. 40).each do |i|
  c = A.count{|v| v & (1 << i) > 0 }
  C[i][1] = c
  C[i][0] = N - c
end

F_k = (0 .. 40).inject(0){|m,i| m + (1 << i) * (k.bit?(i) ? C[i][0] : C[i][1]) }
F_max = (0 .. 40).inject(F_k) do |s, i|
  if k.bit?(i)
    kv = C[i][0] * (1 << i)
    lsum = (i + 1 ... 41).inject(0){|m,j| m + (k.bit?(j) ? C[j][0] : C[j][1]) * (1 << j) }
    rsum = (0 ... i).inject(0){|m,j| m + C[j].max * (1 << j) }
    [lsum + kv + rsum, s].max 
  else
    s
  end
end
puts F_max