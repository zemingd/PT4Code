n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

def gcd(x, y)
  if y == 0
    x
  else
    gcd(y, x % y)
  end
end

def gcd_array(array)
  if array.size == 2
    gcd(array[0], array[1])
  else
    gcd(array[0], gcd_array(array[1..-1]))
  end
end

if n == 2
  puts a.max
  exit
end

# puts a.combination(2).map { |x, y| gcd(x, y) }.max
gcd = a.combination(n-1).inject(0) do |max, array|
  gcd = gcd_array(array)
  max < gcd ? gcd : max
end

puts gcd
