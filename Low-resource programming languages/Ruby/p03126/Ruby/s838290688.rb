n, m = gets.chomp.split(" ").map(&:to_i)

like_food = []
n.times do
  hoge = gets.chomp.split(" ").map(&:to_i)
  hoge.shift
  like_food << hoge
end

a = like_food.inject([*1..m]) {|master, nums| master & nums}


p a.size