x, n = gets.split.map(&:to_i)
pp = gets.split.map(&:to_i)

unless pp.include?(x) || n > 0
  puts x
  exit 0
end

1.upto(n) do |i|
  x_minus = x - i
  x_plus = x + i
  unless pp.include?(x_minus)
    puts x_minus
    exit 0
  end
  unless pp.include?(x_plus)
    puts x_plus
    exit 0
  end
end

x_minus = x - n+1
x_plus =  x + n+1
unless pp.include?(x_minus)
  puts x_minus
  exit 0
end
unless pp.include?(x_plus)
  puts x_plus
  exit 0
end
