a, b = gets.split.map(&:to_i)

def div(x, y)
  if x % y == 0
    y
  else
    div(y, x % y)
  end
end

max_common_divisor = div([a, b].max, [a, b].min)

arr = []

(max_common_divisor/2).times do |i|
  arr.push(i*2 + 1) if ((a % (i*2 + 1) == 0) && (b % (i*2 + 1) == 0))
end

arr.push(2) if max_common_divisor >= 2

ans_arr = []
size = arr.size

arr.reverse_each.each_with_index do |v1, i|
  (size - 1 - i).times do |v2|
    ans_arr.push(v1) if div([v1, arr[v2]].max, [v1, arr[v2]].min) != 1
  end
end

puts arr.size - ans_arr.uniq.size
