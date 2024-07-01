require 'prime'

class Integer
  # 全ての約数を配列で返す
  def divisor_list
    return [1] if self == 1
    Prime.prime_division(self).map do |d|
      Array.new(d[1] + 1).map.with_index { |element, i| d[0] ** i }
    end.inject { |p, q| p.product(q) }.map do |a|
      [a].flatten.inject(:*)
    end.sort
  end
end

n = gets.to_i
numbers = gets.split(" ").map(&:to_i)
# 箱にボールを入れる時、全ての約数にメモをする
memo = Array.new(n + 1, 0)
answers = []
# 上から順番に箱に入れる
n.downto(1) do |i|
  # 自身の倍数に入れられたボールの数を2で割り、余りが箱に書かれた整数と一致する場合はボールを入れない
  if memo[i] % 2 == numbers[i - 1]
    next
  # 一致しない場合はボールを入れる
  else
    answers << i
    # また、全ての約数にメモをする
    i.divisor_list.each do |divisor|
      memo[divisor] += 1
    end
  end
end
puts answers.size
puts answers.join(" ") if answers.size != 0