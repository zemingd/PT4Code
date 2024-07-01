# https://atcoder.jp/contests/abc149/tasks/abc149_c

def sosuu?(n)
  x = Math.sqrt(n).to_i

  x.downto(2) do |i|
    return false if n % i == 0
  end
  true
end

X = gets.to_i

loop do
  break if sosuu?(X)
  X += 1
end

puts X
