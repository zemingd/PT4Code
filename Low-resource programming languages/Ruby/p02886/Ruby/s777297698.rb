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
d_n = gli

puts d_n.combination(2).inject(0) { |sum, (x, y)| sum + (x * y) }
