n,m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i).sort
ls = m.times.map{gets.split.map(&:to_i)}.sort_by{|i| i[1]}.reverse

sum = 0
ls.each do |j|
  h = j[0]
  h.times do |i|
    if arr[0] < j[1]
      sum += j[1]
      arr.shift
    end
  end
end

p arr.inject(:+) + sum