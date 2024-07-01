N = gets.to_i
num = []
(1..N).each do |i|
  num.push i
end
nums = num.permutation(N).to_a
res = []

2.times{
  a = gets.split.map(&:to_i)
  res.push nums.index(a)
}
p (res[0] - res[1]).abs