require 'prime'
n = gets.chomp.split(' ').map(&:to_i)[0]
c = 0
for i in 1..n do
  if i.odd?
    s = 1
    qs = []
    Prime.prime_division(i).map { |l| qs << l[1] }
    qs.map { |q| s *= (q + 1) }
    c += 1 if s == 8
  end
end
puts c