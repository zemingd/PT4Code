# frozen_string_literal: true

N = gets.chomp.to_i
X = gets.chomp.split('').map(&:to_i)
X_NUM = X.join.to_i(2)

# bit数え上げ
def popcount(x)
  x.to_s(2).count('1')
end

# 操作
def func
  default = popcount(X_NUM)
  high = default + 1
  low = default - 1
  x_mod_high = X_NUM % high
  x_mod_low = X_NUM % low

  (1..N).reverse_each do |i|
    count = 1
    x = 0
    if X[-i] == 0
      x = x_mod_high + (2**(i - 1) % high)
      x = x % high
    elsif X[-i] == 1
      x = x_mod_low - (2**(i - 1) % low)
      x = x % low
    end
    until x.zero?
      x = x % popcount(x)
      count += 1
    end
    puts count
  end
end

func