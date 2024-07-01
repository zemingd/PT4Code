n, m = gets.chomp.split(" ").map(&:to_i)
a = [0]
1.upto(m) do |i|
  a[i] = gets.chomp.to_i
end

def combi2(n, k)
  num = 1
  1.upto(k) do |i|
    num = num * (n - i + 1) / i
  end
  num
end

def n_pattern(d)
  c = 0
  0.upto(d / 2) do |i|
    n2 = i
    n1 = d - 2 * i
    nn = n1 + n2
    c += combi2(nn, [n1, n2].min)
  end
  c
end

c = 1
cur = 0
1.upto(m) do |i|
  if a[i] == cur
    puts 0
    exit
  end
  d = a[i] - cur - 1
  c *= n_pattern(d)
  cur += d + 2
end
d = n - cur
c *= n_pattern(d)
puts c % 1_000_000_007
