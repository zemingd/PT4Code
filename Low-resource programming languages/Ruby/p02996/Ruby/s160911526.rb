require 'pp'
n = gets.to_i
ab = []
n.times do
  a, b = gets.split.map(&:to_i) # 必要時間、締切時間
  ab << [a,b]
end

ab = ab.sort_by{|x|x[1]}

flag = true
first_day = 0
ab.each do |x|
  first_day += x[0]
  flag &&= first_day <= x[1]
end
puts flag ? 'Yes' : 'No'
# Yes, No, Yes
