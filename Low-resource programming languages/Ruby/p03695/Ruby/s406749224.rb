n = gets.to_i
a = gets.split.map(&:to_i)
num = [0]*8
r = 0

8.times do |i|
  num[i] = a.filter{|j| j>=r && j<r+400}.count
  r += 400
end

overs = a.filter{|j| j>=3200}.count

ans = num.count{|i| i!=0}
puts "#{ans} #{[8, ans+overs].min}"