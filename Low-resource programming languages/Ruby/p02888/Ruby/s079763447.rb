def gi; gets.to_i end
def gs; gets.chomp end
def gli; gets.split(' ').map(&:to_i) end
def d(n); Math.log10(n).to_i + 1 end
class Integer
  # 約数の組み合わせを列挙する
  def divisor_combinations
    (1..Math.sqrt(self).to_i).
      select { |i| self % i == 0 }.
      map { |i| [i, self / i] }
  end
end

N = gi
L_N  = gli

def can_triangle?(a, b, c)
  a < b + c && b < c + a && c < a + b
end

puts L_N.combination(3).count { |a, b, c| can_triangle?(a, b, c) }
