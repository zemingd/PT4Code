n, m = gets.split.map &:to_i
as = gets.split.map { |s| s.to_i >> 1 }

def clz(x)
  n = 0
  while (x & 1) == 0
    x >>= 1
    n += 1
  end
  n
end

min = clz(as[0])
as.each do |a|
  n = clz(min)
  if n != min
    puts 0
    exit
  end
end

l = as.inject { |a, b| a.lcm b }
p l
p (m / l + 1) / 2
