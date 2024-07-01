P = Struct.new(:id, :he)
N, M = gets.split.map(&:to_i)
h = []
h = gets.split.map(&:to_i)
tel = []
N.times do |i|
  tel[i] = P.new(i, h[i])
end
a = []
b = []
M.times do |i|
  a[i], b[i] = gets.split.map(&:to_i)
end

adj = []
N.times do |i|
  adj[i] = []
  adj[i].fill(false, 0..N-1) #0行めと0列めは全部falseで固定、使わない
end
M.times do |i|
  # 無向グラフなので転置した位置の値もtrueにする
  # telの添え字が頂点idになってる
  adj[a[i]-1][b[i]-1] = tel[a[i]-1].he - tel[b[i]-1].he
  adj[b[i]-1][a[i]-1] = tel[b[i]-1].he - tel[a[i]-1].he
end


ans = 0
adj.each do |item|
  # if item.all?{|v| v==false}
  #   # puts "#{item}"
  #   ans += 1
  if item.all?{|v| v==false or v>0}
    ans += 1
  end
end
puts ans
