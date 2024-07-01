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
  low = 1 if default.zero?

  (1..N).reverse_each do |i|
    x = nil
    count = 0
    pop = if X[-i] == 0
            high
          else
            low
          end
          # p pop
    until pop.zero?
      x = if X[-i] == 0
              x ||= X_NUM + 2**(i - 1)
              # puts "x = #{x}"
              x % pop
            else
              x ||= X_NUM - 2**(i - 1)
              # puts "x = #{x}"
              x % pop
            end
            # p pop
      pop = popcount(x)
      count += 1
    end
    puts count
  end
end

func
