gets
a = gets.strip.split(" ").map(&:to_i).sort.reverse

if a.size == 1
  puts a.first
else

gcd = a.first
worst = 0
1.upto(a.size - 1) do |i|
  g = a[i].gcd(gcd)
  if g < gcd
    worst = i.dup
    gcd = g
  end
end

a.delete_at(worst)

gcd = a.first
1.upto(a.size - 1) do |i|
  gcd = a[i].gcd(gcd)
end

puts gcd
end
