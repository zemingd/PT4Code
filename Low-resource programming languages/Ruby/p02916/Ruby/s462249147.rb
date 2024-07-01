n = gets.to_i

a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

ans = (0...n).inject(0) do |r, i|
  extra = a[i + 1] == a[i] + 1 ? c[a[i] - 1] : 0
  r + b[a[i] - 1] + extra
end

puts ans
