n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
arr_del = Array.new;arr_bin = Array.new(n+1,0)
ans = 0
n.times do |k|
  ans = 0
  arr_bin = Array.new(n+1,0)
  arr_del = arr.dup
  arr_del[k] = 0
  arr_del.each do |k1|
    arr_bin[k1] += 1
  end
  arr_bin.each do |k2|
    if k2 >= 2
      ans += (k2 * (k2-1))/2
    end
  end
  puts ans
end