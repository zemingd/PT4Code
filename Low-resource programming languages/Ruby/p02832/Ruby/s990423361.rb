n = gets.to_i
a = gets.split.map(&:to_i)

cnt = 0
a.each{|x|
  cnt += 1 if cnt+1 == x
}

p (cnt==0)? -1 : n-cnt
