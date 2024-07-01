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

if bin_sums.length < bin_max.length
  bin_sums = [0]*(bin_max.length - bin_sums.length) + bin_sums
elsif bin_max.length < bin_sums.length
  bin_max = [0]*(bin_sums.length - bin_max.length) + bin_max
end
#p bin_sums
puts bin_max.zip(bin_sums).map{|max, sum| max == 1 ? N - sum : sum}.
  each_with_index.map{|sum, i| sum * 2**(bin_max.length - i - 1)}.
  reduce(&:+)