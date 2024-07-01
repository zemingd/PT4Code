n = gets.to_i
a = gets.chomp.split.map(&:to_i)
book = Hash.new(0)
a.each do |x|
  book[x] += 1
end

e2 = []
e4 = 0
book.each do |k, v|
  if v >= 4
    e4 = [e4, k].max
    e2 << k
  elsif v >= 2
    e2 << k
  end
end

e2.sort!
puts [(e2[-2] || 0) * (e2[-1] || 0), e4 * e4].max