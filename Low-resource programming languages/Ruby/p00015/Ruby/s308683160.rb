def sum(a, b)
  as = a.split("").map { |s| s.to_i }
  bs = b.split("").map { |s| s.to_i }

  alen = as.length
  blen = bs.length

  if (alen >= blen)
    bs = [0] * (alen - blen) + bs
  else
    as = [0] * (blen - alen) + as
  end

  len = as.length
  sums = []
  of = 0

  (len - 1).step(0, -1).each do |i|
    d = as[i] + bs[i] + of
    sums.unshift(d % 10)
    of = d / 10
  end

  if (of > 0)
    sums.unshift 1
  end

  return sums.join("")
end

### main

n = gets.chop.to_i

n.times do
  a = gets.chop
  b = gets.chop

  c = sum(a, b)

  if (a.length > 80 || b.length > 80 || c.length > 80)
    puts "overflow"
  else
    puts c
  end
end