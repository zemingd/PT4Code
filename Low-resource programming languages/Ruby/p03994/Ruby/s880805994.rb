def chgchr(s)
  if(s=="z")then
    return "a"
  else
    return (s.ord + 1).chr
  end
end

s = gets.chomp
t = s
k = gets.to_i

# - 文字がaのときは変換対象としない
# - 文字がb以降なら、aまでの変換回数が処理可能ならその分の数を割り当て、
#   足りないなら変換しないで次の文字を処理する
# - 余ったら、すべて最後の文字に処理を割り当てる

(s.size).times do |i|
  if s[i]=="a" && i!=(s.size)-1 then
    next
  elsif k >= (123-s[i].ord) then
    k -= 123-s[i].ord
    t[i] = "a"
  elsif i==(s.size)-1 then
    kk = k%26
    kk.times do |j|
      t[i] = chgchr(t[i])
    end
  end
end

puts t