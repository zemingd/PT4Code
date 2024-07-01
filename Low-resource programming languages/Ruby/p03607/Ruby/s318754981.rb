N = gets.to_i
arr = []
arr2 = Hash.new(0)
N.times do
  s = gets.to_i
  arr << s
  arr2[s] += 1
end
puts arr2.count{|x,y| y.odd?}