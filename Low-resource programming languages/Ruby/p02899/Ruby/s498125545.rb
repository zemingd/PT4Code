# coding: utf-8
N = gets().to_i
A = gets.split.map{|e| e.to_i}
save_idx = {}

# 今のindexを記録
A.each_with_index do |e, i|
  save_idx[e] = i
end

# 値順にソート
A.sort!
  
# 記録したidx+1を出力
A.each do |_e|
  p save_idx[_e] + 1
end
