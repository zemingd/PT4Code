n = gets.to_i
numbers = gets.split(" ").map(&:to_i)

def gcd(n, m)

  n, m = m, n if m > n
  #p [n, m]

   loop {
    r = n % m
    break if r == 0
    n, m = m, r
  }
  m
end

gcd_from_left = []
gcd_from_right = []

gcd_from_left.push(numbers.first)
numbers[1..numbers.length - 1].each do |number|
  gcd_from_left.push(gcd(number, gcd_from_left.last))
end

gcd_from_right.push(numbers.last)
numbers[0..numbers.length - 2].reverse.each do |number|
  gcd_from_right.push(gcd(number, gcd_from_right.last))
end

gcd_from_right.reverse!

gcd_except_target = []

if(gcd_from_left.length > 2)
  gcd_from_left[0..gcd_from_left.length - 3].each_with_index do |number, index|
    gcd_except_target.push(gcd(number, gcd_from_right[index + 2]))
  end
end

gcd_except_target.push(gcd_from_left[1])
gcd_except_target.push(gcd_from_right[-2])

puts gcd_except_target.max