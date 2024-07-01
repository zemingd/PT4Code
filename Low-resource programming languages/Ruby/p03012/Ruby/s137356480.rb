n = gets.to_i
arr = gets.split.map(&:to_i)
half = arr.inject(:+)/2
sum = arr.inject(:+)

pattern1 = 0
pattern2 = 0

arr.each do |i|
  if pattern1 <= half
    pattern1 += i
  else
    pattern2 += i+pattern1
    break
  end
end

p1 = (sum-pattern1*2).abs
p2 = (sum-pattern2*2).abs

if p1 <= p2
  puts p1
else
  puts p2
end