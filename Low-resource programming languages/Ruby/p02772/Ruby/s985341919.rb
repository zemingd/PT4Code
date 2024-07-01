# coding: utf-8
N = gets.to_i
nums = gets.split.map {|e| e.to_i}

# 偶数だけ抽出
nums_even = nums.select {|e| e.even?}

# 全てが3または5で割り切れるか？
nums_even.each do |e|
  if (e%3 != 0) and (e%5 != 0)
    puts 'DENIED'
    exit 0
  end
end
puts 'APPROVED'

