n=gets.to_i
as=gets.split.map(&:to_i)

sum = 0
0.upto(as.length-1) do |i|
  as[i] -= (i+1)
  sum += as[i]
end

avg = sum / n.to_f

# targets = []
# as_ = as.sort.uniq
# as_.each_with_index do |a,i|
#   if avg <= a
#     targets << as_[i+1] if as_[i+1]
#     targets << as_[i]
#     targets << as_[i-1] if 0 <= i-1
#     break
#   end
# end
#
targets = as.sort.uniq

min = 10**20
targets.each do |m|
  tmp = as.map {|a| (a-m).abs}.inject(&:+)
  if tmp < min
    min = tmp
  else
    p min
    exit 0
  end
end

p min