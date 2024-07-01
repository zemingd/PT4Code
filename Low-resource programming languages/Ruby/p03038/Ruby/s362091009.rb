n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.sort!
m.times do
  b, c = gets.split.map(&:to_i)
  b.times do |i|
    if a[i] < c
      a[i] = c
    else
      break
    end
  end
  a.sort!
end
p a.inject(:+)