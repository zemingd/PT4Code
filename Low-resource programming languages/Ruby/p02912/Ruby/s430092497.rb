n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

if n == 1
  puts a[0] / (2 ** m)
  exit
end

a.sort!{|x, y| y <=> x }
while (m > 0) do
  while a[0] >= a[1]
    m -= 1
    a[0] /= 2
  end

  a.sort!{|x, y| y <=> x }
end

puts a.inject(:+)