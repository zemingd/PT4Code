n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

base = 1
v = k
while v / 2 > 0 do
  v /= 2
  base *= 2
end

r = 0
while base > 0
  c = as.count { |a| (a / base) % 2 != 0 }
  # ['test base', base].tapp
  if c <= n / 2
    # ['base ok', base].tapp
    if r + base <= k
      # ['sum ok', base, r].tapp
      r += base
    end
  end

  base /= 2
end

# as.map { |a| a.to_s(2) }.tapp
# r.tapp

sum = as.map { |a| a ^ r }.reduce { |m, i| m + i }
puts(sum)