# frozen_string_literal: true

N = gets.chomp.to_i
X = gets.chomp
X_NUM = X.to_i(2)

# bit数え上げ
def popcount(x)
  x.to_s(2).count('1')
end

def f(x)
  return 1 if x == 0
  x = x % popcount(x)
  1 + f(x)
end

# 操作
def func
  default = X.count('1')
  high = default + 1
  low = default - 1
  x_mod_high = X_NUM % high
  low = 1 if default == 1
  x_mod_low = X_NUM % low

  N.times do |i|
    i = N - i
    x = 0
    if X[-i] == '0'
      x = x_mod_high + (2**(i - 1) % high)
      x = x % high
    elsif default == 1
      puts 0
      next
    elsif X[-i] == '1'
      x = x_mod_low - (2**(i - 1) % low)
      x = x % low
    end
    puts f(x)
  end
end

func