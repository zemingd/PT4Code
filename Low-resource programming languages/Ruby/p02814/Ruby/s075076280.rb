n, m = gets.split.map(&:to_i)
# nums は事前に 2 で割る
nums = gets.split.map{ |s| s.to_i >> 1 }

class Array
  def lcm
    self.inject { |a, b| a.lcm(b) }
  end

  # def gcd
  #   self.inject{ |a, b| a.gcd(b) }
  # end
end

count = nums.first.to_s(2).reverse.index("1")

# 全ての num の 2 で割り切れる回数が同じであることを確認
nums.each do |num|
  if count != num.to_s(2).reverse.index("1")
    puts 0
    exit
  end
end

ans = m / nums.lcm
ans += 1 if ans.odd?
ans /= 2
puts ans
