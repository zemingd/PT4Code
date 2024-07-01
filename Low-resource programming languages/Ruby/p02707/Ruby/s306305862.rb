N = gets.to_i
As = gets.split.map(&:to_i)

# ハッシュで集計してカウントする関数
hsh = As.each_with_object(Hash.new(0)){|v,o| o[v]+=1}

1.upto(N){|n|
  hsh[n] = 0 if hsh[n].nil?
  puts hsh[n]
}