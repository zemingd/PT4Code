  n, k = gets.chomp.split(" ").map(&:to_i)
  a = []
  b = []
  c = []
  n.times do |i|
    a[i], b[i] = gets.chomp.split(" ").map(&:to_i)
    b[i].times do
      c << a[i]
    end
  end
  puts c.sort[k-1]