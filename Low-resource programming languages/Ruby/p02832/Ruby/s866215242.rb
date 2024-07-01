N = gets.to_i # レンガの個数
a = gets.split.map(&:to_i) # レンガに書かれてる数字

ans = 0
e = N
i = 0
while i<e
  while (i<e) && (a[i]!=(i+1)) # i番目のレンガに書かれてる数がiでない場合
    a.delete_at(i)
    e = e - 1
    ans = ans + 1
  end
  i += 1
end

if e==0 # 全てのレンガを壊してしまった？
  puts -1
else
  puts ans
end