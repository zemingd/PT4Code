END { load __FILE__ unless $stdin.eof? }

n = gets.to_i
x = gets.chomp.chars.map!(&:to_i)

c = x.count(1)
c0 = c + 1
m0 = x.inject(0) { |result, bit| (result * 2 + bit) % c0 }
c1 = c - 1
m1 = x.inject(0) { |result, bit| (result * 2 + bit) % c1 } if c1 > 0

y0 = 1
y1 = 1
x = x.reverse!.map! do |xi|
  xi = (
    if xi == 0
      (m0 + y0) % c0
    else
      (m1 - y1) % c1 if c1 > 0
    end
  )

  y0 = y0 * 2 % c0
  y1 = y1 * 2 % c1

  xi
end.reverse!

$table = [0]
def f(num)
  $table[num] ||= f(num % num.digits(2).count(1)) + 1
end

x.each { |xi| puts xi ? f(xi) + 1 : 0 }
