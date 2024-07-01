require 'pp'
# 10 -1 33
s = gets.chomp.chars
t = gets.chomp.chars

arr_2d = []
t.size.times do |ti|
  arr_1d = []
  s.size.times do |si|
    arr_1d[si] = s[si] == t[ti]
  end
  arr_2d << arr_1d
end
# pp arr_2d

count = 0

pre_si = s.size + 10
t.size.times do |ti|
  s.size.times do |si|
    if arr_2d[ti][si]
      if pre_si > si # 自分のほうが前のより小さいなら
        count += s.size
      end
      pre_si = si
      break # s loop
    end
    if si == s.size-1
      p(-1)
      exit
    end
  end
end
# p count
count -= s.size
count += pre_si+1
p count
