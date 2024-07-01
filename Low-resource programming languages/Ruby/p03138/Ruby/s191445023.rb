N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i).sort

def len(a)
  (a == 0 ? 1 : Math.log2(a).floor + 1)
end

A_len = len(As[-1])
bin_As = As.map{|a| [0]*(A_len-len(a)) + a.to_s(2).split('').map(&:to_i)}

## naive ##
def xor(bin1, bin2)
  bin1_len = bin1.length
  bin2_len = bin2.length
  if bin1_len < bin2_len
    bin1 = [0]*(bin2_len-bin1_len) + bin1
  elsif bin2_len < bin1_len
    bin2 = [0]*(bin1_len-bin2_len) + bin2
  end
  bin1.zip(bin2).map{|b1, b2| b1 == b2 ? 0 : 1}
end

puts (0..K).map{|x|
  bin_x = x.to_s(2).split('').map(&:to_i)
  #p bin_As
  #p bin_x
  bin_As.map{|bin_a| xor(bin_a, bin_x).join.to_i(2)}.reduce(&:+)
  }.max
