n, m = gets.chomp.split(' ').map(&:to_i)
if m <= n
  puts 0
  exit 0
end
xs = gets.chomp.split(' ').map(&:to_i).sort

def get_longest_index(xs)
  index = -1
  longest = 0

  xs.each_with_index do |item, idx|
    next if idx == 0
    d = xs[idx] - xs[idx - 1]
    if d > longest
      longest = d
      index = idx
    end
  end

  return index - 1, longest
end

def divide(xs)
  p, _ = get_longest_index(xs)

  first = xs.dup.slice(0, p + 1)
  last = xs.dup.slice(p + 1, xs.length)

  return first, last
end

def which_divide(xs)
  p = -1
  i = -1
  xs.each_with_index do |x, idx|
    _, l = get_longest_index(x)
    if l < p
      i = idx
    end
  end

  i
end

xs = [xs]
while xs.length < n do
  i = which_divide(xs)
  j, k = divide(xs[i])
  xs.delete_at(i)
  xs.insert(i, j, k)
end

ans = 0
xs.each do |item|
  ans += (item.last - item.first).abs
end

puts ans