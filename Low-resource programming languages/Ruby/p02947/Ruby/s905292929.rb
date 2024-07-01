N = gets.to_i
s =[]
hash = {}
ans = 0
N.times do |i|
  # 入力を受け取って昇順ソート
  s[i] = gets.chomp.split("").sort.join
  # 登場回数をハッシュに記録
  if hash.has_key?(s[i])
    hash[s[i]] += 1
    ans += hash[s[i]]
  else
    hash[s[i]] = 0
  end 
end

puts ans
