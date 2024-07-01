n = gets.to_i
arr = Hash.new(0)
n.times do
  s = gets.chomp
  arr[s] += 1
end
num = 0
ans = []
arr.sort{|x,y|y[1] <=> x[1]}.each do |x, y|
  if num <= y
    ans << x
    num = y
  else
    break
  end
end

ans.sort.each do |an|
  puts an
end