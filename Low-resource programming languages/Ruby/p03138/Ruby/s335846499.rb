N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i).sort

def len(a)
  (a == 0 ? 1 : Math.log2(a).floor + 1)
end

A_len = len(As[-1])
bin_As = As.map{|a| [0]*(A_len-len(a)) + a.to_s(2).split('').map(&:to_i)}
bin_sums = bin_As.reduce{|bin_a1, bin_a2| bin_a1.zip(bin_a2).map{|b1, b2| b1 + b2}}
bin_stds = bin_sums.map{|sum| A_len-sum <= sum ? 0 : 1}

bin_K = K.to_s(2).split('').map(&:to_i)
K_len = bin_K.length
if A_len < K_len
  bin_max = bin_K[0...(K_len - A_len)]
  bin_K.slice!(0, K_len - A_len)
elsif A_len == K_len
  bin_max = []
else
  bin_max = []
  bin_stds.slice!(0, A_len - K_len)
end
#p bin_max
#p bin_K
#p bin_stds

bin_K.each_with_index do |k, i|
  if k == 0
    bin_max << 0
  else # k == 1
    if bin_stds[i] == 1
      bin_max << 1
    else
      bin_max += bin_stds[i..-1]
      break
    end
  end
end
#p bin_max

if A_len < bin_max.length
  bin_As.map!{|bin_a| [0]*(bin_max.length - A_len) + bin_a}
elsif bin_max.length < A_len
  bin_max = [0]*(A_len - bin_max.length) + bin_max
end

puts bin_As.map{|bin_a| bin_a.zip(bin_max).map{|b1, b2| b1 + b2 == 1 ? 1 : 0}}.
  map{|bins| bins.join.to_i(2)}.reduce(&:+)