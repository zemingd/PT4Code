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

N, M = gli
A = gli.sort
# 1 <= k <= N
# 1 <= X <= M
# X: 正の整数


# 1. pの範囲を求める

x_list_per_a = A.uniq.map do |a|
  p_min = ((1.to_f / a) - 0.5).to_i
  p_min = 0 if p_min < 0
  p_max = ((M.to_f / a) - 0.5).to_i
  (p_min..p_max).to_a.map do |p_c|
    (a * (p_c + 0.5)).to_i
  end
end

res = []
x_list_per_a.each_cons(2) do |a, b|
  if res.empty?
    res = a & b
  else
    res = res & a & b
  end
end
puts res.length
