require 'pp'

n = gets.to_i # 人数

a = Array.new(n){ Array.new(n, nil) }
n.times do |i|
  aa = gets.to_i
  aa.times do
    x, y = gets.split.map(&:to_i)
    if y == 1 # 正直
      a[i][x-1] = true
    else
      a[i][x-1] = false
    end
  end
end
# pp a

max = 0

[true, false].repeated_permutation(n).to_a.each do |arr|
  # puts "========"
  # p arr
  tmp = arr.count{|x|x}
  # p tmp
  flag = true
  arr.size.times do |i| # それぞれの人
    next if !arr[i] # 真偽不明の人はどうでもいい
    a[i].each.with_index do |aa, ii| # 曰く、i番目の人は.
      next if aa == nil
      if aa # 正直ですって行ってたのに
        if arr[ii] == false #違かったら
          flag = false
        end
      else # 非正直ですって行ってたのに
        if arr[ii] == true #違かったら
          flag = false
        end
      end
    end
  end
  if flag
    max = tmp if max < tmp
  end
end

p max
# 2 0 1
