require 'pp'
# 4 3 16
n = gets.to_i
arr = [
  1,
  6,
  6**2,
  6**3,
  6**4,
  6**5,
  6**6,
  9,
  9**2,
  9**3,
  9**4,
  9**5,
]
aaa = [
  1,
  6,
  6**2,
  6**3,
  6**4,
  6**5,
  6**6,
  9,
  9**2,
  9**3,
  9**4,
  9**5,
]

cnt = 0
# p arr
while arr.any?{|a|a==n}.!
  arr = arr.product(aaa).map{|(a,b)| a + b }.reject{|x|n<x}.uniq
  # p arr.size
  cnt += 1
end
p cnt+1
