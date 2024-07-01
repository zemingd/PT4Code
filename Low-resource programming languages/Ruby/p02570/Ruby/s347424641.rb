n, m = gets.split(" ").map(&:to_i)

@ind_arr = Array.new(n+1){|i| i}
@f_arr = Array.new(n+1, 1)

def find(x)
  return x if x == @ind_arr[x]
  # 途中のindexも更新しておく
  @ind_arr[x] = find(@ind_arr[x])
  return @ind_arr[x]
end

def union(x, y)
  x = find(x)
  y = find(y)
  return if x == y
  @ind_arr[x] = y
  @f_arr[y] += @f_arr[x]
end

m.times do
  a, b = gets.split(" ").map(&:to_i)
  a_ind = find(a)
  b_ind = find(b)
  next if a_ind == b_ind

  @ind_arr[b_ind] = a_ind
  @f_arr[a_ind] += @f_arr[b_ind]
end

puts f_arr.max
