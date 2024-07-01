sum,yen = gets.chomp.split(" ").map(&:to_i)
ans10000 = -1
ans5000 = -1
ans1000 = -1
0.upto(sum) do |x|
  0.upto(sum-x) do |y|
    z = sum - x - y
    sum_yen = (x*10000)+(y*5000)+(z*1000)
    if sum_yen == yen
      ans10000 = x
      ans5000 = y
      ans1000 = z
      break
    end
  end
end
puts "#{ans10000} #{ans5000} #{ans1000}"



