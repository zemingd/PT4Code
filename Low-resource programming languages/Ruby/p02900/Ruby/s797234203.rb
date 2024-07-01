require 'prime'

a, b = gets.chomp.split.map(&:to_i)
n = a.gcd(b)

count = 1
count += 1 if n.prime?
Prime.each(n**0.5) do |p|
  d, m = n.divmod(p)
  if m == 0
    count += 1
    count += 1 if d!=p && d.prime?
  end
end

puts(count)