S = gets.chomp
MOD = 10**9 + 7

l = S.length
d0 = [1] + [0]*12
S.chars.each_with_index do |c, i|
  d1 = [0]*13
  (c == '?' ? [*0 .. 9] : [c.to_i]).each do |j|
    (0 ... 13).each{|k| d1[(10*k + j) % 13] += d0[k]}
  end
  d0 = d1.map{|x| x % MOD}
end
puts d0[5]