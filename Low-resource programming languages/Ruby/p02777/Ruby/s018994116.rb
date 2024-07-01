# 入力
s,t = gets.chomp.split.map(&:to_s)
a,b = gets.chomp.split.map(&:to_i)
u = gets.chomp

# こたえ
if s == u
  print [(a-1),b].join(" ")
else
  print [a,(b-1)].join(" ")
end