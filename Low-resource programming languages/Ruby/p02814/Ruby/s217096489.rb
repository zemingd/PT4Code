n, m = gets.split(' ').map!(&:to_i)
arr = gets.split(' ').map!(&:to_i).uniq!

count = 0

(1..m).each do |x|
  next if x.even?

  count += 1 if arr.all? { |k| (x % k) == (k / 2) } # *.5 になっている場合は 整数 p は存在する
end

puts count
