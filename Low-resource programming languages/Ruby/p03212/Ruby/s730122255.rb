require "set"
n = gets.chomp.to_i

# 3進数を利用して七五三数を直接集める
hash = {"0"=>"3", "1"=>"5", "2"=>"7"}
arr = []
# 桁数だけ回す
(3..9).each do |digit|
  (3**digit).times do |i|
    set = Set.new
    num = ""
    ("%0#{digit}d" % i.to_s(3)).each_char do |c|
      num += hash[c]
      set << hash[c]
    end
    # 3,5,7が1回以上表れた場合に挿入
    arr << num.to_i if set.length == 3
  end
end

# 番兵
arr << 10 ** 9
# arrは作り方からsort済なのでindexを求めれば良い
puts arr.index{|a| a > n}
