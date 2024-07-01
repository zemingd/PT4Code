n, m = gets.chomp.split(" ").map(&:to_i)
a = [0]
1.upto(m) do |i|
  a[i] = gets.chomp.to_i
end

def n_pattern(d)
  c = 0
  0.upto(d / 2) do |i|
    n2 = i
    n1 = d - 2 * i
    nn = n1 + n2
    if n1.zero? || n2.zero?
      c += 1
    else
      c += (n2 + 1..nn).inject(1, :*) / (1..n1).inject(1, :*)
    end
  end
  c
end

c = 1
cur = 0
1.upto(m) do |i|
  if a[i] == cur
    c = 0
    break
  end
  d = a[i] - cur - 1
  c *= n_pattern(d)
  cur += d + 2
end
d = n - cur
c *= n_pattern(d)
puts c % 1_000_000_007
