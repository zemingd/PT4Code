ls = []

#ls = [[84, 97, 66], [79, 89, 11], [61, 59, 7]]

input = []
3.times do
  ls << gets.split(" ").map(&:to_i)
end
n = gets.chomp!.to_i

n.times do
  input << gets.chomp!.to_i
end


# あたり番号格納配列
hit = 0

# [0, 1, 2], [0, 0, 0], [1, 1, 1], [2, 2, 2], [2, 1. 0]
# ls_2に一致パターンを定義
ls_2 = [
  [ls[0][0], ls[1][1], ls[2][2]],
  [ls[0][2], ls[1][2], ls[2][2]],
  [ls[0][1], ls[1][1], ls[2][1]],
  [ls[0][0], ls[1][0], ls[2][0]]
]
ls_2.each do |e|
  count = 0
  input.each do |num|
    for i in 0..2 do
      if num == e[i]
        count += 1
      end
    end
  end
  if count == 3
    # ビンゴ回数カウント
    hit += 1
  end
end

if hit > 0
  puts "Yes"
else
  puts "No"
end