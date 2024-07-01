=begin
  問題文

  いろはちゃんはこだわりもので、嫌いな数字が K個あり、それぞれ D1, D2,
  ..., DK です。

  いろはちゃんはお店でお買い物をしていて、N円の品物を買おうとしていま
  す。 もちろん、この品物は N円以上のお金を支払えば買うことができます。
  しかし、先ほど述べたようにいろはちゃんは強いこだわりがあるので、自分
  がお店に支払う金額の 10進表記にいろはちゃんの嫌いな数字が出現しない
  ような最も少ない金額を支払おうとします。

  いろはちゃんが支払う金額を求めてください。
=end

n, k = gets.split.map(&:to_i)
d = gets.split
e = [*'0'..'9'] - d

s = n.to_s

i = s.size - 1
while i >= 0
  if d.include?(s[i])
    r = e.find { |c| c > s[i] }
    if r
      s[i] = r
      break
    end
  end
  i -= 1
end

puts s