n, m = gets.split.map(&:to_i)
ans = 0

like_list = []

n.times do
  like_list << gets.split.map(&:to_i)
end

duplicate = {}


# [[1,2,3], [4,3,5]]
# [1,2,3] = n | (n.size = 3-1 = 2)
#   n[1] = 2..3.each do |i|
#     duplicateにiのキーがあれば += 1する
#     なければ1を入れよう
# [4,3,5]



like_list.size.times do |n|
  # first = 0 like_list[0]
  # 回すのは１〜size-1まで
  1.upto(like_list[n].size-1) do |i|
    like_list[n][i]
    if duplicate[like_list[n][i]]
      duplicate[like_list[n][i]] += 1
    else
      duplicate[like_list[n][i]] = 1
    end
  end
end

duplicate.each do |_, v|
  if v == like_list.size
    ans += 1
  end
end

puts ans
