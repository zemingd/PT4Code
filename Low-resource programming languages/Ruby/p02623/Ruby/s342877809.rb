N, M, K = gets.split.map(&:to_i)
AS = gets.split.map(&:to_i)
BS = gets.split.map(&:to_i)

MAX = 10 ** 9

asum = AS.sum
bsum = BS.sum
if asum + bsum < K
  puts AS.count + BS.count
  exit
end

k = K
as = AS
bs = BS

count = 0
if asum < k && bsum < k
  if as.count < bs.count
    k -= bsum
    count += bs.count
    bs = []
  elsif as.count > bs.count
    k -= asum
    count += as.count
    as = []
  else
    # nop
  end
elsif asum < k
  k -= asum
  count += as.count
  as = []
elsif bsum < k
  k -= bsum
  count += as.count
  bs = []
end

def s(k, as, bs)
  return 0 if (as.count == 0 && bs.count == 0) || k == 0

  a = as.first || MAX
  b = bs.first || MAX
  return 0 if k - a < 0 && k - b < 0
  if k - a < 0
    count = 0
    bs.each do |b|
      break if k - b < 0
      count += 1
      k -= b
    end
    count
  elsif k - b < 0
    count = 0
    as.each do |a|
      break if k - a < 0
      count += 1
      k -= a
    end
    count
  else
    [
      s(k - b, as, bs[1..-1]) + 1,
      s(k - a, as[1..-1], bs) + 1,
    ].max
  end
end

puts count + s(k, as, bs)
