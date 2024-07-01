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
# sss = Time.now.to_f
cnt = 0
# p arr
while !arr.any?{|a|a==n}
  arr = arr.product(aaa).map{|(a,b)|n<a+b ? 1 : a+b }.uniq
  # p arr.size
  cnt += 1
end
p cnt+1
# eee = Time.now.to_f
# p eee - sss
