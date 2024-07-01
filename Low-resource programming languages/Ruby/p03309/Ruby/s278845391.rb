n=gets.to_i
as=gets.split.map(&:to_i)

sum = 0
0.upto(as.length-1) do |i|
  as[i] -= (i+1)
  sum += as[i]
end

avg = sum / n

targets = []
as.sort.each_with_index do |a,i|
  if avg <= a
    targets << a
    targets << as[i-1] if i != 0
    break
  end
end

# p targets
bs = []
targets.each do |m|
  bs << as.map {|a| (a-m).abs}.inject(&:+)
end

p bs.min