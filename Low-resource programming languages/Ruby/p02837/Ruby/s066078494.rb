n = gets.chomp.to_i

# 証言をhashでもたせる
hash = {}
1.upto(n) do |i|
  hash[i] = []
  a = gets.chomp.to_i
  a.times do
    x,y = gets.chomp.split(" ")
    hash[i] << [x.to_i, y]
  end
end

max = 0
0.upto(2**n-1).each do |i|
  # 正直者であれば1, 不親切な人であれば0が入る
  # 添字を揃えるために先頭はxにしている
  check_arr = ("x" + "%0#{n}d" % i.to_s(2)).split("")

  flag = false
  hash.each do |h_num, arr|
    # 不親切な人の言うことは無視
    next if check_arr[h_num] == "0"
    arr.each do |(x, y)|
      # 異なる値であれば矛盾
      if check_arr[x] != y
        flag = true
        break
      end
    end
    break if flag
  end

  next if flag

  tmp = check_arr.count("1")
  max = tmp if tmp > max
end

puts max
