n,m = gets.chomp.split.map(&:to_i)
ts = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:first).sort_by(&:last).reverse
ans = 0
cnt = 0
array = Array.new(m+1,0)
ts.each do |d,r|
  if m >= cnt
    if array[d] == 0
      ans += r
      cnt += 1
      array[d] += 1
    else
      (d..n).each do|i|
        if array[i] == 0
          ans += r
          cnt += 1
          array[i] += 1
          break
        end
      end
    end
  end
end
puts ans