n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)


ans = Float::INFINITY

x.min.upto(x.max) do |val|
  tmp_sum = 0
  x.each do |elm|
    tmp_sum += (val-elm)**2
  end

  ans = tmp_sum if tmp_sum < ans
end

p ans
