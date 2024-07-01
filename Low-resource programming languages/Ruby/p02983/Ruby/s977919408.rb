l, r = gets.split.map!(&:to_i)
min_num = 2018
(l..r-1).each do |i|
  (i+1..r).each do |m|
    res = (i*m) % 2019
    if min_num > res then
      min_num = res
    end
    if min_num.zero? then
      break
    end
  end
end
print(min_num)