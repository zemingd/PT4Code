N = gets.to_i
s =[]
hash = {}
ans = 0
N.times do |i|
  # 入力を受け取って昇順ソート
  s = gets.chomp.split("").sort
  # 登場回数をハッシュに記録
  if hash.has_key?(s)
    hash[s] += 1
    ans += hash[s]
  else
    hash[s] = 0
  end 
end