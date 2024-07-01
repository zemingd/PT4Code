n = gets.to_i
h = gets.split.map(&:to_i)
max = -1
cnt = 0
h.each{|w|
  cnt += 1 if max <= w
  max = [w,max].max
}
p cnt