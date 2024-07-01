# frozen_string_literal: true

n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
MAX = 10**9 + 1

if a.sum + b.sum <= k
  puts a.size + b.size
  exit 0
end

if a[0] > k || b[0] > k
  puts 0
  exit 0
end

count = 0
loop do
  # pp [k, count, a, b]
  if (a[0] || MAX) <= (b[0] || MAX)
    if k >= (a[0] || MAX)
      k -= a[0]
      a.shift
      count += 1
    else
      break
    end
  else
    if k >= (b[0] || MAX)
      k -= b[0]
      b.shift
      count += 1
    else
      break
    end
  end
end

puts count
