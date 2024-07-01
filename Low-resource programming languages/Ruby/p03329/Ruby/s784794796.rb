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
cnt = 1
while true
  arr = arr.product(aaa).map{|(a,b)| a + b }.uniq.reject{|x|
    if x == n
      p cnt+1
      exit
    end
    n<x
  }
  cnt += 1
end
