# すぬけ君の管理する研究室の扉にはロックがかかっており、解錠にはセキュリティコードを入力する必要があります。
# セキュリティコードは 4 桁の数字列です。
# セキュリティコードが「入力しづらい」とは、同じ数字が連続する箇所が存在することを言います。
# 現在のセキュリティコード S が与えられます。
# S が「入力しづらい」なら Bad を、そうでなければ Good を出力してください。

s = gets

result = "Good";
s.length.times do |i|
  if !s[i + 1]
    break
  elsif s[i] == s[i + 1]
    result = "Bad"
    break
  end
end

puts result;