def city_savers(n, a, b)
  ans = 0
  (n - 1).downto(0) do |i|
    k = [a[i + 1], b[i]].min
    ans += k
    a[i + 1] -= k
    b[i] -= k

    k = [a[i], b[i]].min
    ans += k
    a[i] -= k
    b[i] -= k
  end
  ans
end

n = gets.chomp.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

puts city_savers(n, a, b)
