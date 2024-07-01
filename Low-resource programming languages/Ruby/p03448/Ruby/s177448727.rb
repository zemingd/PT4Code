A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

ans = 0

0.upto(A) do |a|
  0.upto(B) do |b|
    0.upto(C) do |c|
      next if 500 * a + 100 * b + 50 * c != X

      ans += 1
    end
  end
end

puts ans
