n, m = gets.split(' ').map!(&:to_i)
arr = gets.split(' ').map!(&:to_i)

count = 0

find_x = (1..m).find do |x|
  next if x.even?

  arr.all? { |k| (x % k) == (k / 2) } # *.5 になっている場合は 整数 p は存在する
end

if find_x
  i = 1
  while m >= find_x * i
    x = find_x * i
    count += 1 if arr.all? { |k| (x % k) == (k / 2) }
    i += 1
  end
end

puts count
