require 'set'

X, Y, Z, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

sorted_a = A.sort_by { |n| -n }
sorted_b = B.sort_by { |n| -n }
sorted_c = C.sort_by { |n| -n }

used = Set.new
list = [[0, 0, 0, sorted_a[0] + sorted_b[0] + sorted_c[0]]]
used.add([0, 0, 0])
K.times do
  ai, bi, ci, sum = list.shift
  puts sum
  if ai + 1 < sorted_a.size
    key = [ai + 1, bi, ci]
    if !used.include?(key)
      sum = sorted_a[ai + 1] + sorted_b[bi] + sorted_c[ci]
      list.push(key + [sum])
      used.add(key)
    end
  end
  if bi + 1 < sorted_b.size
    key = [ai, bi + 1, ci]
    if !used.include?(key)
      sum = sorted_a[ai] + sorted_b[bi + 1] + sorted_c[ci]
      list.push(key + [sum])
      used.add(key)
    end
  end
  if ci + 1 < sorted_b.size
    key = [ai, bi, ci + 1]
    if !used.include?(key)
      sum = sorted_a[ai] + sorted_b[bi] + sorted_c[ci + 1]
      list.push(key + [sum])
      used.add(key)
    end
  end
  list.sort_by! { |(_, __, __, sum)| -sum }
end
