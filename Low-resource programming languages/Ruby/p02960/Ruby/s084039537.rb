S = gets.chomp
MOD = 10**9 + 7

d0 = [1] + [0] * 12
(0 ... S.length).each do |i|
  d1 = Array.new(13, 0)
  if S[i] == '?'
    (0 .. 9).each do |j|
      (0 ... 13).each{|k| d1[(10*k + j) % 13] += d0[k]}
    end
  else
    j = S[i].to_i
    (0 ... 13).each{|k| d1[(10*k + j) % 13] += d0[k]}
  end
  d0 = d1.map{|x| x % MOD}
end
puts d0[5]