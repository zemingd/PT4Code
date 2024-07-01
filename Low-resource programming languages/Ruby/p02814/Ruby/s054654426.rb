N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

def f(x)
  cnt = 0

  while x % 2 == 0 
    x /= 2
    cnt += 1
  end

  cnt
end

B = A.map { |a| f(a / 2) }

if B.uniq.size > 1
  puts 0
  exit
end

T = A.map { |a| a / 2 }.inject(&:lcm)

puts (M / T / 2.0).ceil
