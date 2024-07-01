N, M = gets.split.map(&:to_i)
p = []
y = []
# 県=>市の配列 のハッシュ
c = {}
# ソートしちゃうので何番目に入力された市か覚えておく必要がある
# yearはユニークなので，year=>入力順の辞書を作っておく
dict = {}

M.times do |i|
  p[i], y[i] = gets.split.map(&:to_i)
  if c[p[i]].nil?
    c[p[i]] = []
  end
  c[p[i]].push(y[i])
  dict[y[i]] = i
end

c.each do |a|
  # 各県の市を誕生順に昇順ソートする
  a[1].sort!
end

# puts "#{c}"

ans = {}
c.each do |key, val|
  i = 1
  val.each do |v|
    ans[dict[v]] = format('%06d', key) + format('%05d', i)
    i += 1
  end
end

ans = ans.sort

ans.each do |a|
  puts a[1]
end