N,M = gets.split.map(&:to_i)
x = []

# 市番号, 年, 県
M.times do |i|
  p,y = gets.split.map(&:to_i)
  x << [i,y,p]
end

# 県を第1, 年を第2でソート
x = x.sort_by do |item|
  [item[2], item[1]]
end

pref = -1
b = 0
h = {}
M.times do |i|
  # 県が変わった場合
  if pref != x[i][2]
    pref = x[i][2]
    b = 1 # カウンタリセット
  end
  s = format('%06d', x[i][2]) # 認識番号前半
  s << format('%06d', b) # 認識番号後半
  b += 1
  h[x[i][0]] = s # 市の番号でハッシュに格納
end

# 市の番号順に出力
M.times do |i|
  puts h[i]
end