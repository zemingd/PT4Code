# 入力
s,t = gets.chomp.split.map(&:to_s)
a,b = gets.chomp.split.map(&:to_i)
u = gets.chomp

# s,tどちらが"red"か判定
if s == "red"
  c = "red"
else
  c = "blue"
end

# こたえ
if c == u
  print [(a-1),b].join(" ")
else
  puts [a,(b-1)].join(" ")
end