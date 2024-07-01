n, *abc = gets.split.map(&:to_i)
ls = n.times.map{gets.to_i}

ans = 10**18
(4**n).times do |i|
  arr = Array.new(3){[]}

  n.times do |j|
    if i%4 < 3
      arr[i%4].push(ls[j])
    end
    i /= 4
  end

  next if arr.any?{|a| a.size == 0}
  mp = 0
  3.times do |k|
    mp += (arr[k].size - 1 ) * 10
    mp += (abc[k] - arr[k].inject(:+)).abs
  end
  ans = mp if ans > mp
end
p ans
