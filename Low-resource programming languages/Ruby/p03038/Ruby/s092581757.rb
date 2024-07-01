n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

bc = []

a = a.sort.reverse
shiki = a[n-1]

0.step(m - 1) do |i|
  k = gets.chomp.split(' ').map(&:to_i)
  if shiki < k[1]
    a.push(*Array.new(k[0]){ k[1] })
    a = a.sort.reverse[0, n]
    shiki = a[n - 1]
  end
end

p a.sort.reverse.take(n).inject(:+)