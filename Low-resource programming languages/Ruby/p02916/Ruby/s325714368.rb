n = gets.to_i

a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

ans = b[a[0] - 1]

ans += (1...n).inject(0) do |r, i|
  if a[i] == a[i - 1] + 1
    r + b[a[i] - 1] + c[a[i] - 1 - 1]
  else
    r + b[a[i] - 1]
  end
end

puts ans