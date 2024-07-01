n,m,k=gets.chomp.split.map(&:to_i)
a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)

res = 0
cnt = 0


loop do
  nasi = 0

  if a.size == 0 && b.size == 0
    break
  elsif a.size == 0
    res += b.first
    b.shift
  elsif b.size == 0
    res += a.first
    a.shift
  else
    if a.first >= b.first
      res += b.first
      b.shift
    else
      res += a.first
      a.shift
    end
  end

  if res >= k
    cnt += 1 if res == k
    break
  else
    cnt += 1
  end
end

puts cnt