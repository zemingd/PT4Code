def a(n, k)
  0.upto(Float::INFINITY) do |c|
    break c if n < k ** c
  end
end
n, k = gets.split(' ').map(&:to_i)
p a(n, k)