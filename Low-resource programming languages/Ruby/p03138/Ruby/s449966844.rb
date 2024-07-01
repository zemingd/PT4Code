N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i).sort

def len(a)
  (a == 0 ? 1 : Math.log2(a).floor + 1)
end

#p "1: #{Time.now - start_time}s"

A_len = len(As[-1])
bin_As = As.map{|a| a.to_s(2).split('').map(&:to_i)}.
  map{|bin| [0]*(A_len-bin.length) + bin}
$bin_sums = bin_As.transpose.map{|bins| bins.reduce(&:+)}
bin_As.map!{|bin| [0]*(40-A_len) + bin}
$bin_sums = [0]*(40-A_len) + $bin_sums
bin_stds = $bin_sums.map{|sum| As.length-sum <= sum ? 0 : 1}

#p "2: #{Time.now - start_time}s"

def f(bin)
  bin.zip($bin_sums).map{|max, sum| max == 1 ? N - sum : sum}.
    each_with_index.map{|sum, i| sum * 2**(bin.length - i - 1)}.
    reduce(&:+)
end

bin_K1 = (K+1).to_s(2).split('').map(&:to_i)
bin_K1 = [0]*(40-bin_K1.length) + bin_K1
max = 0
bin_K1.each_with_index do |b, i|
  if b == 1
    tmp_bin_max = bin_K1[0...i] + [0] + bin_stds[(i+1)..-1]
    tmp_max = f(tmp_bin_max)
    if tmp_max > max
      max = tmp_max
    end
  end
end

puts max
