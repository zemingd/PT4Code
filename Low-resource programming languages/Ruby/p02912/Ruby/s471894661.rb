n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

if n == 1
  puts(a[0] / 2**m)
  exit
end

a.sort!
while m > 0 do
  max = a.pop
  k = 1
  while max >= a[-1] * k && m > 0
    k *= 2
    m -= 1
  end
  max /= k
  pos = a.bsearch_index{ |ai| ai > max }
  pos = n-1 if pos == nil
  a.insert(pos, max)
end

puts(a.reduce(&:+))