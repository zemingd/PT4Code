n=gets.to_i
as=gets.split.map(&:to_i)

sum = 0
0.upto(as.length-1) do |i|
  as[i] -= (i+1)
  sum += as[i]
end

avg = sum / n.to_f

# targets = []
target = 0
as_ = as.sort.uniq
as_.each_with_index do |a,i|
  if avg <= a
    target = i
    # targets << as_[i+1] if as_[i+1]
    # targets << as_[i]
    # targets << as_[i-1] if 0 <= i-1
    break
  end
end

min = as.map {|a| (a-as_[target]).abs}.inject(&:+)
(target-1).downto(0) do |j|
  s = 0
  as.each do |a|
    s += (a-as_[j]).abs
  end
  if s < min
    min = s
  else
    break
  end
end

p min

# bs = []
# targets.each do |m|
#   bs << as.map {|a| (a-m).abs}.inject(&:+)
# end
