# https://atcoder.jp/contests/abc117/tasks/abc117_c


input_temp = gets.chomp.split(" ")
koma_count = input_temp[0].to_i    # 駒
zahyo_count = input_temp[1].to_i   # 座標

input_temp = gets.chomp.split(" ")
zahyo_position = input_temp.map(&:to_i)

# print "koma_count=",koma_count,"\n"
# print "zahyo_count=",zahyo_count,"\n"
# print "zahyo_position=",zahyo_position,"\n"

# 累積話問題読み

zahyo_position.sort!
kaisa_zahyo_position = []

# 階差
(zahyo_count-1).times do |i|
    kaisa_zahyo_position[i] = (zahyo_position[i+1] - zahyo_position[i]).abs
end

kaisa_zahyo_position = kaisa_zahyo_position.sort.reverse

if kaisa_zahyo_position.size <= (koma_count-1)
    p 0
    exit
end

kaisa_zahyo_position.shift(koma_count-1)

# p kaisa_zahyo_position

puts kaisa_zahyo_position.inject(:+)