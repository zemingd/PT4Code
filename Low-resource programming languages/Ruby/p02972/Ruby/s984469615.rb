n = gets.to_i
a = [0] + gets.split.map(&:to_i)

(n/2).downto(1) do |i|
  s = 0
  j = i
  while j <= n do
    s += a[j]
    j += i
  end
  a[i] = s & 1
end

ans = (1..n).select{ |i| a[i] == 1 }
puts ans.size, ans * " "