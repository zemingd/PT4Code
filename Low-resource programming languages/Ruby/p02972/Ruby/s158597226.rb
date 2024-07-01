N = gets.to_i
A = gets.split.map(&:to_i).unshift(nil)

cur = Array.new(N + 1, 0)
use = Array.new(N + 1, false)

def divisors(n)
  d = [1]
  d << n if n > 1
  2.upto(Math.sqrt(n).to_i) do |i|
    if n % i == 0
      d << i
      other_divisor = n / i
      d << other_divisor if other_divisor != i
    end
  end
  d
end

(N).downto(1) do |i|
  if cur[i] % 2 != A[i]
    divisors(i).each do |div|
      cur[div] += 1
      use[div] = true
    end
  end
end

ans = use.map.with_index { |u, i| i if u }.compact
puts ans.size

ans_nums = ans.join(' ')
puts ans_nums.empty? ? '0' : ans_nums