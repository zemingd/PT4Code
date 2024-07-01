# coding: utf-8
N, M = gets.split(" ").map{|e| e.to_i}
aA = []
aB = []
N.to_i.times do |_|
  a, b = gets.split(" ").map{|e| e.to_i}
  aA << a
  aB << b
end
# 報酬を得られる日ごとの降順の報酬ハッシュテーブルを作る
h = {}
N.times do |i|
  k = aA[i]
  if h.has_key? k
    h[k] << aB[i]
  else
    h[k] = []
    h[k] << aB[i]
  end
end

# 降順に並び替え
h.each do |k,v|
  h[k].sort!.reverse!
end

ans = 0
# M日目までの最大報酬（要素０）を集計
M.downto(0) do |i|
  if h.has_key? i
    ans += h[i][0]
  elsif i == 0
    if h.has_key?(1)
      if h[1].size > 1
        ans += h[1][1]
      end
    end
  end
end              
puts ans
                
  
