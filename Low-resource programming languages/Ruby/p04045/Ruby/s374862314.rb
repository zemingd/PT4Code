n, k = gets.chomp.split(' ').map(&:to_i)

d = gets.chomp.split(' ').map(&:to_i)

res = n
loop do
  tmp = res.to_s.split('').uniq.map(&:to_i)
  if tmp.length + d.length == (tmp + d).uniq.length
    puts res
    exit(0)
  end
  res += 1
end
