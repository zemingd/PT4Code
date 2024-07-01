n = gets
a = gets.split.map(&:to_i).map{|x| x - 1}
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

ans = 0
a.each_with_index do |ai, i|
  ans += b[ai]
  if i > 0 && a[i-1] == ai - 1
    ans += c[a[i-1]]
  end
end
p ans