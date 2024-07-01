N,K = gets.split.map(&:to_i)

len = 0
ans = nil
data = []

N.times do
  a,b = gets.split.map &:to_i

  flag = true
  data.each_with_index do |d, i|
    if d[0] == a
      d[1] += b
      flag = false
      break
    elsif a < d[0]
      data.insert(i, [a,b])
      flag = false
      break
    end
  end

  data << [a,b] if flag
end

len = 0
data.each do |(v, n)|
  len += n
  if K <= n
    puts v
    break
  end
end
