n = gets.to_i
a = gets.split.map(&:to_i)
min = 10**6
cnt = 0
a.each{|x|
  if x<min
    min = x
    cnt += 1
  end
}

p cnt
